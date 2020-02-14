import React from 'react';
import  { TouchableOpacity, View, Text,TextInput,Button, ImageBackground, StyleSheet, Image, AsyncStorage, Platform } from "react-native";
import { find } from 'lodash';
import {API} from '../apiurl';


export default class ProfilScreen extends React.Component{
    static navigationOptions = {
        header: null
      };

    constructor(props){
        super(props)
        this.state ={ 
            email: "",
            usernameraw: "",
            username: "",
            emailraw: "",
            data:"",
            notifyUsername:"",
            notifyEmail:"",
            notifyGeneral:"",
            userId:"",
            success:""

        };
        this.fetchData = this.fetchData.bind(this);
        this.valider = this.valider.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
        
//  this.getUser = this.getUser.bind(this);
 // this.getloginUser = this.getloginUser.bind(this);
    }


    validateEmail = (email) =>{
        let re = /^[a-zA-Z0-9\._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
        return re.test(email);
      }
    
      validateUsername = (username) =>{
        let re = /^[A-Za-z0-9_\.]{6,32}$/;
        return re.test(username);
      }

     

    fetchData = async()=>{
        const username = await AsyncStorage.getItem('username');
        console.log("??????????????????",username);
    
        

        const reponse = await fetch(API+'/getUserByName?username='+username);
     
        const utilisateur = await reponse.json();
        this.setState({
            username:utilisateur[0].username,
            email: utilisateur[0].email,
            emailraw: utilisateur[0].email,
            userId:utilisateur[0].utilisateurs_id
        });

        console.log(utilisateur);
    
    }

    componentWillMount(){
        
        this.fetchData();
        this.setState({notifyEmail:""})
    }

    

    valider = () =>{
        let items = [...this.state.data];
        let item = find(items,{'username':this.state.username});
        this.setState({
            success:"",
    });
        
        if(this.state.emailraw!=this.state.email){
            if(!this.validateEmail(this.state.email)){
                this.setState({notifyEmail:"Not a valid email"});
            }else{
                this.setState({notifyEmail:""});
            }
        }else{
            this.setState({notifyEmail:"same email"});

        }
        

        if(this.state.email!==""&&this.state.notifyEmail===""&&this.state.email!=this.state.emailraw&&this.state.success==""){
            console.log(this.state.userId);
            this.handleSubmit();
            }
        
       
    };
    handleSubmit = async()=>{
        const email = this.state.email;
        const data = {email}

        const reponse = await fetch(API+'/utilisateursUpdate/' + this.state.userId, {
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
                emailraw:this.state.email
        });

        }
    }

    renderRow = () =>{

    }

    logout=async()=>{
        // console.log('logout called');
        // FirebaseAPI.logoutUser();
    
        await AsyncStorage.clear();
        // InteractionManager.runAfterInteractions(()=>{
          this.props.navigation.navigate('AuthLoading');
        // })
      }

    render (){
        let notifyEmail;
        let notifyUsername;
        let success;

        notifyEmail = <Text style={styles.warning}>{this.state.notifyEmail}</Text>;
        
        if(this.state.success!=""){
            success = <Text style={styles.success}>{this.state.success}</Text>;
        }
        notifyUsername = <Text style={styles.warning}>{this.state.notifyUsername}</Text>;

        console.log(this.state.notifyEmail);

        return(
            <View style = {styles.container}>
                 <ImageBackground source={require('../assets/images/holiday2013_front.jpg')} style={{width: '100%', height: '100%'}}>
                 
       
                 <Text style={styles.InfoTitle}>Informations Profil </Text>
       
                    <View style={styles.textContainer}>

                        <View style = {styles.row}>
                        <Text  style = {styles.form}> Username:   </Text>
                        <Text  style = {styles.leftdiv2}  color="#8FBDBE">{this.state.username}</Text> 
            
                        </View>

                        <View style = {styles.row}> 
                        <Text  style = {styles.form}> Email:  </Text>
                        <TextInput onChangeText={(text)=>this.setState({email: text})} value={this.state.email} style = {styles.leftdiv}  placeholderTextColor="#8FBDBE" placeholder="" /> 
                        {notifyEmail}
                        {success}

                        </View>
                        {/* <View style = {styles.row}> 
                        <Text  style = {styles.form}> Password:  </Text>
                            <TextInput onChangeText={(text)=>this.setState({password: text})} value={this.state.password}  style = {styles.leftdiv} secureTextEntry={true} placeholder="" placeholderTextColor="#8FBDBE"/>
                         </View> */}

                 
                       

          <Button title="Save" onPress={this.valider} style={styles.buttonSubmit}  color="#F5D242"></Button>
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
    signUp:{
        display:'flex',alignItems:'center',textAlign:'center', flex:0.6, marginTop:20,fontSize:12,color: '#8FBDBE'
      },
    container: {
        fontFamily: 'Roboto',
        flex: 1,
        backgroundColor: '#fff',
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
        fontSize: 20,
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
        
        
       
      },
      leftdiv: {
        marginLeft: 90,
        marginTop: -9,
        fontWeight: 'bold',
        position: 'absolute',
        color:'#8FBDBE',
        borderBottomColor:'#FFFFFF',
        borderBottomWidth: 0.8,
        marginBottom: 60,
      },
      leftdiv2: {
        marginLeft: 90,
        marginTop: -20,
        fontWeight: 'bold',
        color:'#8FBDBE',
       
        marginBottom: 20,
      },
      buttonSubmit: {
          marginTop: 80,
       }, warning_bottom:{
        fontSize:12,
        color:'#FF5733',
        marginTop:20,
        marginBottom:5
      },
      warning:{
        fontSize:12,
        color:'#FF5733',
        marginTop:5,
        marginBottom:10
      },
      success:{
        fontSize:12,
        color:'#5bb85c',
        marginTop:5,
        marginBottom:10
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
      }

});

