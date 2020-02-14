import React, {useState} from 'react';
import { View, StyleSheet, Platform, Text, TextInput, Button, ImageBackground, Picker} from 'react-native';
import * as FirebaseAPI from '../modules/firebaseAPI';
import firebase from 'firebase';
import { find } from 'lodash';
import md5 from 'md5';
import {API} from '../apiurl';

export default class SigninScreen extends React.Component {
  static navigationOptions = {
    header: null
  };
  constructor(props){
    super(props);

    this.state = {
    email: "",
    password: "",
    username: "",
    confirPass:"",
    choosenType:"",
    notifyUsername:"",
    notifyPassword:"",
    notifyConfiPass:"",
    notifyEmail:"",
    notifyType:"",
    data:[],
    users:[],
    error:[]
  };
  this.addUser = this.addUser.bind(this);
  this.loginUser = this.loginUser.bind(this);
  this._showMoreApp = this._showMoreApp.bind(this);
  this.setType = this.setType.bind(this);
  this.handleSubmit = this.handleSubmit.bind(this);
  // this.watchAuthState = this.watchAuthState.bind(this);
  }


  addUser(){
    //console.log(this.state.data);
    let items = [...this.state.data];
    let item = find(items,{'username':this.state.username});
    

    if(!this.validateEmail(this.state.email)){
      this.setState({notifyEmail:"Not a valid email"});
    }else{
      this.setState({notifyEmail:""});
    }


    if(this.state.username.length<6){
      this.setState({notifyUsername:"At least 6 characters"});
    }else{
      if(!this.validateUsername(this.state.username)){
        this.setState({notifyUsername:"Not a valid username"});
      }else{
        if(item){
          this.setState({notifyUsername:"Username exits"});
        }else{
          this.setState({notifyUsername:""});
        }
      }
    }

    if(this.state.password.length<6){
      this.setState({
        notifyPassword:"At least 6 characters"
      });
    }else{
      if(!this.validatePassword(this.state.password)){
        this.setState({notifyPassword:"Not a valid password"});
      }else{
        this.setState({notifyPassword:""});
      }
    }  

    if(this.state.confirPass.length<6){
      this.setState({notifyConfiPass:"At least 6 characters"});
    }
    else{
      if(!this.validatePassword(this.state.confirPass)){
        this.setState({notifyConfiPass:"Not a valid confirm password"});
      }else{
        if(this.state.confirPass!=this.state.password){
          this.setState({notifyConfiPass: "not like as password"});
        }else{
            this.setState({notifyConfiPass:""});
        }
      }

    }

    if(!this.state.choosenType){
      this.setState({notifyType:"not vide type"})
    }else{
      this.setState({notifyType:""});
    }

    

    if(this.state.notifyUsername===""&&this.state.notifyPassword===""&&this.state.notifyConfiPass===""&&this.state.notifyEmail===""&&this.state.notifyType===""&&this.state.username!==""
      &&this.state.password!==""&&this.state.confirPass!==""&&this.state.email!==""&&this.state.choosenType!==""){
      this.handleSubmit();
      //console.log("alo");
    }
    
    //console.log(this.state.choosenType);
    
   


    // FirebaseAPI.createUser(this.state.email,this.state.password);
    // this.loginUser();
  }

  loginUser(){
    FirebaseAPI.loginUser(this.state.email,this.state.password);
  }




  handleSubmit = async()=>{
    console.log('alo');
  

    /*
    // On submit of the form, send a POST request with the data to the server.
    await fetch('http://172.30.134.148:4000/signup', {
      method: 'POST',
      data: {
        'username': this.state.username,
        'password': this.state.password,
        'email': this.state.email
      }
    })
   .then(function(response) {
      //this is the line that is giving me the error
      return response.json()
    }).then(function(body) {
      console.log(body);
    });
        
 */
    const username = this.state.username;
    const password = md5(this.state.password);
    const email = this.state.email;

    console.log(username+' '+password+' '+email);

    const data = {username,password,email};

    const option = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(data)
    };

    //const reponse = await fetch('http://172.30.139.236:4000/signup',option);
    const reponse = await fetch(API+'/signup',option);
    const data2 = await reponse.json();
    console.log(data2);

   
    this.fetchUtilisateurs();
 

  }


      
fetchrole = async(utilisateurs_id,utilisateursRoles_id)=>{
  const option2 = {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({utilisateurs_id,utilisateursRoles_id})
  };

  //const reponse = await fetch('http://172.30.139.236:4000/signuprole',option2);
  const reponse = await fetch(API+'/signuprole',option2);
  const data2 = await reponse.json();
  console.log("----------------------------");
  console.log(data2.status);
  if(data2.status==="success"){
    this._showMoreApp();
  }
}
  

  componentDidMount(){
    this.watchAuthState(this.props.navigation);
    this.fetchData();
  }

  fetchUtilisateurs = async()=>{
    //const reponse = await fetch('http://172.30.139.236:4000/utilisateurs');
    const reponse = await fetch(API+'/utilisateurs');
    const utilisateurs = await reponse.json();
    let item = await find(utilisateurs,{'username':this.state.username});
    if(item){
      const utilisateurs_id = item.id;
      let utilisateursRoles_id = 0;
      console.log(this.state.choosenType);
      if(this.state.choosenType==="client"){
        utilisateursRoles_id = 2;
      }else if(this.state.choosenType==="restaurateur"){
        utilisateursRoles_id = 1;
      }
      console.log(utilisateurs_id+" "+utilisateursRoles_id);
      this.fetchrole(utilisateurs_id,utilisateursRoles_id);
      

    
    }
    //console.log(utilisateurs);
    
  }

  fetchData = async()=>{
    const reponse = await fetch(API+'/utilisateurs');
    // const reponse = await fetch('http://192.168.43.247:4000/utilisateurs');
    //const reponse = await fetch('http://172.30.139.236:4000/utilisateursrole');
    const utilisateurs = await reponse.json();
   // console.log(utilisateurs);
    this.setState({data:utilisateurs});
}

  watchAuthState(navigation){
    firebase.auth().onAuthStateChanged(function(user){
      if(user){
        navigation.navigate('Main');
      }
    })
  }

  _showMoreApp = () => {
    this.props.navigation.navigate('Auth');
  };

  validateEmail = (email) =>{
    let re = /^[a-zA-Z0-9\._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;
    return re.test(email);
  }

  validateUsername = (username) =>{
    let re = /^[A-Za-z0-9_\.]{6,32}$/;
    return re.test(username);
  }

  validatePassword = (password) =>{
    let re = /^([A-Z]{1})([\w\.~!@#$%^&*()+]){5,31}$/;
    return re.test(password);
  }

  setType(item){
    this.setState({choosenType:item});
  }

  render(){
    let notifyEmail;
    let notifyUsername;
    let notifyPassword;
    let notifyType;
    let notifyConfiPass;
  
    notifyEmail = <Text style={styles.warning}>{this.state.notifyEmail}</Text>;
    notifyUsername = <Text style={styles.warning}>{this.state.notifyUsername}</Text>;
    notifyPassword = <Text style={styles.warning}>{this.state.notifyPassword}</Text>;
    notifyType = <Text style={styles.warning_bottom}>{this.state.notifyType}</Text>;
    notifyConfiPass = <Text style={styles.warning_bottom}>{this.state.notifyConfiPass}</Text>;

    console.disableYellowBox = true;
    return (
    <View style={styles.container}>
      <ImageBackground source={require('../assets/images/holiday2013_front.jpg')} style={{width: '100%', height: '100%'}}>
        <View style={styles.spacer}>
          <Text style={styles.header}>Sign Up</Text>
          <View style={styles.textContainer}>
            <TextInput onChangeText={(text)=>this.setState({username: text})} value={this.state.username} style={styles.form}  placeholder = "Username" placeholderTextColor="#8FBDBE"/>
            {notifyUsername}
            <TextInput onChangeText={(text)=>this.setState({email: text})} value={this.state.email} style={styles.form} placeholder = "Email" placeholderTextColor="#8FBDBE"/>
            {notifyEmail}
            <TextInput onChangeText={(text)=>this.setState({password: text})} value={this.state.password} style={styles.form}  secureTextEntry={true} placeholder = "Password" placeholderTextColor="#8FBDBE"/>
            {notifyPassword}
            <TextInput onChangeText={(text)=>this.setState({confirPass: text})} value={this.state.confirPass} style={styles.form} secureTextEntry={true} placeholder = "Confirm password" placeholderTextColor="#8FBDBE"/>
            {
              notifyConfiPass
            }
            <Picker 
              style={styles.androidPicker}
              itemStyle={{ backgroundColor: "grey", color: "blue", fontFamily:"Ebrima", fontSize:17 }} mode='dropdown'
              selectedValue={this.state.choosenType}
              onValueChange={
              (itemValue) => this.setType(itemValue)}>
              <Picker.Item label="- Select type of user -" value="" />
              <Picker.Item label="Client" value="client" />
              <Picker.Item label="Restaurateur" value="restaurateur" />
            </Picker>
            {
              notifyType
            }
            <Button title="Create User" onPress={this.addUser} style={styles.buttonSubmit} color="#F5D242"></Button>
            <Text style={styles.condition} >Terms and conditions</Text>
            {/* <Button title="Return login" onPress={this._showMoreApp} style={styles.buttonSubmit}></Button> */}
          </View>
          <Text style={styles.returnLogin} onPress={this._showMoreApp}>Return login</Text>
        </View>
      </ImageBackground>  
    </View>
  );
  }
  
}

// SigninScreen.navigationOptions = {
//   title: 'Signin',
// };

const styles = StyleSheet.create({
    warning_bottom:{
      fontSize:12,
      color:'#FF5733',
      marginTop:5,
      marginBottom:5
    },
    warning:{
      fontSize:12,
      color:'#FF5733',
      marginTop:5,
    },
    header:{
      color:'#fff',
      fontWeight:'bold',
      fontSize:25,
      textAlign:'center',
      flex:1,
      paddingTop:'25%',
    },
    returnLogin:{
      display:'flex',alignItems:'center',textAlign:'center', flex:0.6, marginTop:10,fontSize:12,color: '#8FBDBE'
    },
    container: {
      flex: 1,
        backgroundColor: '#fff',
    },
    spacer: {
      flex: 1,
    },
    textContainer: {
      flex: 6,
      marginHorizontal: 40,
    },
    text: {
      fontSize: 17,
      color: 'rgba(96,100,109, 1)',
      lineHeight: 24,
      textAlign: 'center',
    },
    form:{
      color:'#8FBDBE',
      borderBottomColor:'#8FBDBE',
      borderBottomWidth: 0.7,
      padding: 5,
      //marginTop: 20
    },
    buttonSubmit:{
  
    },
    condition:{
      display:'flex',alignItems:'center',textAlign:'center', marginTop:10,fontSize:12,color: '#8FBDBE'
    },
    androidPicker: {
      color: '#6D6D6D',
      backgroundColor: '#FFF',
      //marginBottom: 40,
      alignItems:'center', 
      justifyContent:'center',
      flexDirection: 'row',
      
  }
  });