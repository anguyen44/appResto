import React from 'react';
import  { View, Text,TextInput,Button, ImageBackground, StyleSheet, Image, AsyncStorage,TouchableOpacity, Platform } from "react-native";
import {API} from '../apiurl';


export default class RestoProfileScreen extends React.Component {

    static navigationOptions = {
        header: null
      };

    constructor(props){
        super(props)
        this.state ={ 
            email: "",
            nom: "",
            num_telephone: "",
            adressePostale: "",
            data:[],
            buttonMenu:null,
            notifyNom:"",
            notifyEmail:"",
            notifyAdresse:"",
            notifyTelephone:"",
            success:"",
            userId:"",
            restauId:""

        };
        this._showMoreApp = this._showMoreApp.bind(this);
        this.valider = this.valider.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        this.fetchrole = this.fetchrole.bind(this);
    }

    fetchData = async()=>{

        const username = await AsyncStorage.getItem('username');

        const userReponse = await fetch(API+"/getUserByName?username="+username);
        const user = await userReponse.json();

        const idUser = user[0].utilisateurs_id;
        this.setState({
          userId:idUser
        });

        const restauReponse = await fetch(API+"/getRestaurantByUserId/"+idUser);
        const restau = await restauReponse.json();

        if(restau[0]){
          this.setState({
            nom:restau[0].nom,
            email:restau[0].email,
            adressePostale: restau[0].adressePostale,
            num_telephone:restau[0].telephone,
            buttonMenu: <Button title="Savoir Menu" onPress={this._showMoreApp} style={styles.buttonSubmit}  color="#F5D242"/>,
            buttonCreate: <Button title="Save" onPress={this.valider} style={styles.buttonSubmit}  color="#F5D242"></Button>,
            restauId: restau[0].restaurants_id
          });


          console.log(restau[0].restaurants_id+" fhkjdfhkjsdhf "+idUser);


        }else{
          this.setState({
            buttonCreate: <Button title="Create restaurant" onPress={this.valider} style={styles.buttonSubmit}  color="#F5D242"></Button>

          });
        }

        console.log("testtttttttttttttttt",restau);

        /*
        const reponse = await fetch(API+'/restaurants');
        const restaurants = await reponse.json();
        this.state.data= restaurants;
        this.setState({ data:  restaurants});   
*/
      }


      fetchrole = async(restaurants_id,utilisateurs_id)=>{
        console.log('them id');
        const data = {restaurants_id,utilisateurs_id};
        const option2 = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(data)
        };
       //const reponse = await fetch('http://172.30.139.236:4000/signuprole',option2);
        const reponse = await fetch(API+'/signupresto',option2);
        const data2 = await reponse.json();
        console.log("----------------------------");
        console.log(data2.status);
        if(data2.status==="success"){
          this.props.navigation.navigate('Menudujour',{restauId:this.state.restauId});
        }
      }

      _showMoreApp = () => {
        this.props.navigation.navigate('Menudujour');
      };

      componentDidMount(){
          this.fetchData();
      }

      logout=async()=>{
        // console.log('logout called');
        // FirebaseAPI.logoutUser();
    
        await AsyncStorage.clear();
        // InteractionManager.runAfterInteractions(()=>{
          this.props.navigation.navigate('AuthLoading');
        // })
      }

      valider(){
        if(!this.state.restauId){
          console.log("dep nguyen");
          this.setState({
            success:"",
           });
          if(!this.validateEmail(this.state.email)){
            this.setState({notifyEmail:"Not a valid email"});
          }else{
            this.setState({notifyEmail:""});
          }
  
  
          if(!this.state.nom){
            this.setState({notifyNom:"not vide"})
          }else{
            this.setState({notifyNom:""});
          }
  
          if(!this.state.adressePostale){
            this.setState({notifyAdresse:"not vide"})
          }else{
            this.setState({notifyAdresse:""});
          }
  
          if(!this.state.num_telephone){
            this.setState({notifyTelephone:"not vide"})
          }else{
            this.setState({notifyTelephone:""});
          }
  
  
          if(this.state.notifyNom===""&&this.state.notifyEmail===""&&this.state.notifyTelephone===""&&this.state.notifyAdresse===""&&this.state.nom!==""
        &&this.state.adressePostale!==""&&this.state.email!==""&&this.state.num_telephone!==""){
        this.handleSubmit();
        //console.log("alo");
      }
        }else{
          console.log('update resto');
          this.updateRestau();
        }

       

      }

      
      updateRestau = async() =>{
        const {nom,email,adressePostale,num_telephone} = this.state;
        const data =  {nom,email,adressePostale,num_telephone};
    
        const reponse = await fetch(API+'/restoUpdate/' + this.state.restauId, {
        method: 'PUT',
        mode: 'CORS',
        body: JSON.stringify(data),
        headers: {
            'Content-Type': 'application/json'
        }
    });
    
        const data2 = await reponse.json();
        console.log(data2.status);
        if(data2.status=="success"){
            this.setState({success:"Success changed"});
        }else{
            this.setState({
                success:"",
        });
    
        }
    
      };
      


      handleSubmit = async()=>{
       
        const {nom,adressePostale,email,num_telephone} = this.state;
    
        const telephone = num_telephone;
        const data = {nom,adressePostale,email,telephone};
    
        const option = {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json'
          },
          body: JSON.stringify(data)
        };
    
        const reponse = await fetch(API+'/createRestaurant',option);
        const data2 = await reponse.json();
        console.log("jfkdsjflksdjflkdsf",data2.insertId);
        if(data2.insertId){
            this.setState({success:"Success created",buttonMenu: <Button title="Savoir Menu" onPress={this._showMoreApp} style={styles.buttonSubmit}  color="#F5D242"/>});
           // this.props.navigation.navigate('Restaurateur');
           this.fetchrole(data2.insertId,this.state.userId);
           this.setState({restauId:data2.insertId});
            //this._showMoreApp();
        //  this.fetchrole(restau[0].restaurants_id,idUser);
        
        
        }else{
            this.setState({
                success:"",
        });
      }
    
       
        //this.fetchUtilisateurs();
     
    
      }


      validateEmail = (email) =>{
        let re = /^[a-zA-Z0-9\._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
        return re.test(email);
      }

      render(){
        const buttonMenu = this.state.buttonMenu;
        const {buttonCreate} = this.state;
        let notifyNom;
        let notifyEmail;
        let notifyAdresse;
        let notifyTelephone;
        let success;

        
        if(this.state.success!=""){
            success = <Text style={styles.success}>{this.state.success}</Text>;
        }


        notifyNom = <Text style={styles.warning}>{this.state.notifyNom}</Text>;
        notifyEmail = <Text style={styles.warning}>{this.state.notifyEmail}</Text>;
        notifyAdresse = <Text style={styles.warning}>{this.state.notifyAdresse}</Text>;
        notifyTelephone = <Text style={styles.warning}>{this.state.notifyTelephone}</Text>;

        return(
            <View style = {styles.container}>
                 <ImageBackground source={require('../assets/images/holiday2013_front.jpg')} style={{width: '100%', height: '100%'}}>


                 <Text style={styles.InfoTitle}>Informations Restaurant </Text>

                    <View style={styles.textContainer}>

                        <View style = {styles.row}>
                        <Text  style = {styles.form}> Nom:   </Text>
                        <TextInput onChangeText={(text)=>this.setState({nom: text})} value={this.state.nom} style = {styles.leftdiv}   placeholder = "nom du restaurant" placeholderTextColor="#8FBDBE" /> 
                        {notifyNom}
                        </View>

                        <View style = {styles.row}> 
                        <Text  style = {styles.form}> Email:  </Text>
                        <TextInput onChangeText={(text)=>this.setState({email: text})} value={this.state.email} style = {styles.leftdiv}  placeholder = "adresse mail" placeholderTextColor="#8FBDBE"  /> 
                        {notifyEmail}
                        </View>

                        <View style = {styles.row}> 
                        <Text  style = {styles.form}> Adresse:  </Text>
                            <TextInput onChangeText={(text)=>this.setState({adressePostale: text})} value={this.state.adressePostale}  style = {styles.leftdiv}  placeholder = "adresse postale" placeholderTextColor="#8FBDBE"/>
                            {notifyAdresse}
                         </View>

                         <View style = {styles.row}> 
                        <Text  style = {styles.form}> Numéro:  </Text>
                            <TextInput onChangeText={(text)=>this.setState({num_telephone: text})} value={this.state.num_telephone}  style = {styles.leftdiv}  placeholder = "numéro de télephone" placeholderTextColor="#8FBDBE"/>
                            {notifyTelephone}
                            {success}
                         </View>
                         <View style = {styles.row2}>
                          {buttonMenu}
                         </View>


          {buttonCreate}
          <View style={styles.tabBarInfoContainer}>
        <TouchableOpacity onPress={()=>{this.logout(this.props.navigation)}}>
            <Text style={styles.tabBarInfoText}>
               Logout
            </Text>
          </TouchableOpacity>
      </View>
                 </View>
      </ImageBackground>

            </View>


        );

    }

}

const styles = StyleSheet.create({
    container: {
        fontFamily: 'Roboto',
        flex: 1,
        backgroundColor: '#fff',
      },
      warning:{
        fontSize:12,
        color:'#FF5733',
        marginBottom:10
      },
      signUp:{
        display:'flex',alignItems:'center',textAlign:'center', flex:0.6, marginTop:20,fontSize:12,color: '#8FBDBE'
      },
      InfoTitle:{
        color: '#FFFFFF',
        fontSize:22,
        marginTop:60,
        marginBottom:50,
        display: 'flex',
        textAlign: 'center',
        fontWeight: 'bold'
      },
      cavas:{
        textAlign: 'center', flex:2.5, alignItems: 'stretch',paddingTop:70,paddingBottom:30,
      },
      cavasImg:{
        width: 150,
        height: 150
      },  spacer: {
        flex: 3,
      },
      textContainer: {
        flex: 3,
        marginHorizontal: 40,
      },
      text: {
        fontSize: 17,
        color: 'rgba(96,100,109, 1)',
        lineHeight: 24,
        textAlign: 'center',
      },

      form:{
        color:'#FFFFFF',
        fontWeight: 'bold',
        marginTop: -4,
        

      },
      row: {
        marginBottom:10

      },
      row2: {
        marginBottom: 20,

      },
      leftdiv: {
        color:'#8FBDBE',

        marginLeft: 70,
        marginTop: -9,
        fontWeight: 'bold',
        position: 'absolute',
        borderBottomColor:'#FFFFFF',
       borderBottomWidth: 0.9,
        marginBottom: 60,
      },
      buttonSubmit: {
          marginTop: 50,
       },
       tabBarInfoContainer: {
        position: 'absolute',
        bottom: 15,
        left: 0,
        right: 0,
        borderRadius: 15,
        ...Platform.select({
          android: {
            elevation: 20,
          },
        }),
        alignItems: 'center',
      //  backgroundColor: '#fbfbfb',
        backgroundColor: '#8FBDBE', 
        paddingVertical: 20,
      },
      tabBarInfoText: {
        fontSize: 17,
       // color: 'rgba(96,100,109, 1)',
       color: '#FFFFFF',
        textAlign: 'center',
        fontWeight: 'bold'
      },
      warning:{
        fontSize:12,
        color:'#FF5733',
        marginTop:5,
      },
      success:{
        fontSize:12,
        color:'#5bb85c',
        marginTop:5,
        marginBottom:10
      },

});