import * as WebBrowser from 'expo-web-browser';
import React from 'react';
import {
  Image,
  Platform,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
  InteractionManager,
  ImageBackground,
  TextInput,
  AsyncStorage,Button
} from 'react-native';
import {API} from '../apiurl';

export default class MenuScreen extends React.Component{
  

  constructor(props){
    super(props);

    this.state = {
        entree1:"",
        entree2:"",
        plat1:"",
        plat2:"",
        dessert1:"",
        dessert2:"",
        menuId:"",
        restaurant_id:""
    };

    this.fetchData = this.fetchData.bind(this);
    this.getMenuByUserId = this.getMenuByUserId.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.valider = this.valider.bind(this);
  }

  componentDidMount(){
    
      this.fetchData();
  }

  fetchData = async()=>{
    const username = await AsyncStorage.getItem('username');
    console.log("??????????????????",username);

    

    const reponse = await fetch(API+'/getUserByName?username='+username);
 
    const utilisateur = await reponse.json();
    
   

    console.log( utilisateur[0].utilisateurs_id);

    this.getMenuByUserId(utilisateur[0].utilisateurs_id)
    

}

getMenuByUserId = async(userId)=>{
  const reponse = await fetch(API+'/getMenuByUserId/' + userId);
  const data = await reponse.json();

  console.log("-------------------");
  if(data[0]){
    console.log(data[0]);
    await this.setState({
      entree1: data[0].entree1,
      entree2: data[0].entree2,
      plat1: data[0].plat1,
      plat2: data[0].plat2,
      dessert1: data[0].dessert1,
      dessert2: data[0].dessert2,
      menuId:data[0].id,
      success:"",
      restaurant_id:data[0].restaurants_id
    });
  }else{
    console.log('ajouter nouvelle');
    console.log(this.state.menuId);
    console.log("aloola",this.props.navigation.state.params.restauId);
    this.setState({
      restaurant_id:this.props.navigation.state.params.restauId
    })
    this.handleSubmit();
  }
}


handleSubmit = async()=>{
       
  const {restaurant_id,entree1,entree2,plat1,plat2,dessert1,dessert2} = this.state;


  const data = {restaurant_id,entree1,entree2,plat1,plat2,dessert1,dessert2};

  const option = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(data)
  };

  const reponse = await fetch(API+'/createMenu',option);
  const data2 = await reponse.json();
  console.log("jfkdsjflksdjflkdsf",data2.insertId);
  this.setState({menuId:data2.insertId});
  if(!data2.insertId){
    this.setState({
      success:"",
    });
  }
}

logout=async()=>{
  // console.log('logout called');
  // FirebaseAPI.logoutUser();

  await AsyncStorage.clear();
  // InteractionManager.runAfterInteractions(()=>{
    this.props.navigation.navigate('AuthLoading');
  // })
}


  valider = async() =>{
    const {restaurant_id,entree1,entree2,plat1,plat2,dessert1,dessert2} = this.state;
    const data = {restaurant_id,entree1,entree2,plat1,plat2,dessert1,dessert2};

    const reponse = await fetch(API+'/menuUpdate/' + this.state.menuId, {
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

  logout(navigation){
    console.log('logout called');
    this.removeItemValue('userToken');

    InteractionManager.runAfterInteractions(()=>{
      navigation.navigate('Auth')
    });
  }

  render(){
    let success;
    if(this.state.success!=""){
      success = <Text style={styles.success}>{this.state.success}</Text>;
  }

    return (
    <View style={styles.container}>
      
      <ImageBackground source={require('../assets/images/holiday2013_front.jpg')} style={{width: '100%', height: '100%'}}>
      <Text style={styles.InfoTitle}>Ajout de Menu </Text>
      <View style={styles.textContainer}>
      <View style = {styles.row}>
              <Text  style = {styles.form}> Entrées:   </Text>
              <TextInput onChangeText={(text)=>this.setState({entree1: text})} value={this.state.entree1} style = {styles.leftdiv}   placeholder = "Entrée 1 .................................." placeholderTextColor="#8FBDBE" /> 
              <TextInput onChangeText={(text)=>this.setState({entree2: text})} value={this.state.entree2} style = {styles.leftdiv}   placeholder = "Entrée 2 .................................." placeholderTextColor="#8FBDBE" />
      </View>
      <View style = {styles.row}>
              <Text  style = {styles.form}> Plats:   </Text>
              <TextInput onChangeText={(text)=>this.setState({plat1: text})} value={this.state.plat1} style = {styles.leftdiv}   placeholder = "Plat 1 .................................." placeholderTextColor="#8FBDBE" /> 
              <TextInput onChangeText={(text)=>this.setState({plat2: text})} value={this.state.plat2} style = {styles.leftdiv}   placeholder = "Plat 2 .................................." placeholderTextColor="#8FBDBE" /> 
      </View>
      <View style = {styles.row}>
              <Text  style = {styles.form}> Desserts:   </Text>
              <TextInput onChangeText={(text)=>this.setState({dessert1: text})} value={this.state.dessert1} style = {styles.leftdiv}   placeholder = "Dessert 1 .................................." placeholderTextColor="#8FBDBE" /> 
              <TextInput onChangeText={(text)=>this.setState({dessert2: text})} value={this.state.dessert2} style = {styles.leftdiv}   placeholder = "Dessert 2 .................................." placeholderTextColor="#8FBDBE" /> 
              
      </View>
      {success}
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

MenuScreen.navigationOptions = {
  header: null,
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  contentContainer: {
    paddingTop: 30,
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
  textContainer: {
    flex: 3,
    marginHorizontal: 40,
  },
  form:{
    color:'#FFFFFF',
    fontWeight: 'bold',
    marginTop: -4,
    
  },
  row: {
    borderBottomColor:'#FFFFFF',
   borderBottomWidth: 0.9,
    marginBottom: 30,
   
  },
  leftdiv: {
    marginLeft: 60,
    fontWeight: 'bold',
    color:'#8FBDBE',
  },
  InfoTitle:{
  //  color: '#8FBDBE',
   color: '#fff',
    fontSize:22,
    marginTop:60,
    marginBottom:50,
    display: 'flex',
    textAlign: 'center',
    fontWeight: 'bold'
  },
  tabBarInfoText: {
    fontSize: 17,
   // color: 'rgba(96,100,109, 1)',
   color: '#FFFFFF',
    textAlign: 'center',
    fontWeight: 'bold'
  },
  success:{
    fontSize:12,
    color:'#5bb85c',
    marginTop:5,
    marginBottom:10
  },
});
