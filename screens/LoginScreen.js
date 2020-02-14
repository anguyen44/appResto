import React, {useState} from 'react';
import { View, StyleSheet, Platform, Text, TextInput, Button, AsyncStorage, Image, Dimensions, ImageBackground} from 'react-native';
import * as FirebaseAPI from '../modules/firebaseAPI';
import firebase from 'firebase';
import { find } from 'lodash';
import md5 from 'md5';
import {API} from '../apiurl';

const {width,height} = Dimensions.get('window');

export default class LoginScreen extends React.Component {
  
  static navigationOptions = {
    header: null
  };
  constructor(props){
    super(props);

    this.state = {
    email: '',
    password: '',
    data:[],
    notification:''
  };
  this.addUser = this.addUser.bind(this);
  this.loginUser = this.loginUser.bind(this);
  this._showMoreApp = this._showMoreApp.bind(this);
  this._showConfirm = this._showConfirm.bind(this);
  // this.watchAuthState = this.watchAuthState.bind(this);
  }


  addUser(){
    FirebaseAPI.createUser(this.state.email,this.state.password);
  }

  loginUser=async()=>{
    
    // FirebaseAPI.loginUser(this.state.email,this.state.password);
    // console.log(this.state.data);
    let items = [...this.state.data];
    let passwordChiffre = md5(this.state.password);
    //let passwordChiffre = this.state.password;
   
   // console.log(items);

    let item = find(items,{'username':this.state.email,'password':passwordChiffre});
    console.log(item);
    if(!item){
      this.setState({notification:'Username or password is not correct'});
      //console.log(item);
    }else{  
      //console.log(item);
      //console.log(item.username);
      await AsyncStorage.setItem('userToken', item.nom);
      await AsyncStorage.setItem('username', item.username);
      // if(item.nom=="restaurateur"){
      //   this.props.navigation.navigate('Restaurateur');
      // }else{
      //   this.props.navigation.navigate('Main');
      // }
      await this.props.navigation.navigate('AuthLoading');
      // console.log(item);
    }
    
  }

  componentDidMount(){
    this.watchAuthState(this.props.navigation); 
    this.fetchData();
  }

  watchAuthState(navigation){
    firebase.auth().onAuthStateChanged((user)=>{
      if(user){
        navigation.navigate('Main');
        
      }
    })
  }

  _showMoreApp = () => {
    this.props.navigation.navigate('Signin');
  };

  fetchData = async()=>{
    const reponse = await fetch(API+'/utilisateursrole');
    // const reponse = await fetch('http://192.168.43.247:4000/utilisateurs');
    //const reponse = await fetch('http://172.30.139.236:4000/utilisateursrole');
    const utilisateurs = await reponse.json();
    // console.log(utilisateurs);
    this.setState({data:utilisateurs});
}

_showConfirm = () => {
  this.props.navigation.navigate('Confirm');
};

  render(){
    let notifi;
    if(this.state.notification!=''){
      notifi = <Text style={styles.warning}>{this.state.notification}</Text>;
    }
    console.disableYellowBox = true;
    return (
    <View style={styles.container}>
      {/* <Image source={require('../assets/images/pexels-photo-323682.jpeg')}  style={{width:320,
     height:480,}}/> */}
      <ImageBackground source={require('../assets/images/holiday2013_front.jpg')} style={{width: '100%', height: '100%'}}>
      <View style={styles.spacer}>
        <Text style={styles.cavas}>
          <Image style={styles.cavasImg}
            source={require('../assets/images/logo.png')}
          />
        </Text>
        <View style={styles.textContainer}>
          {/* <Text style={styles.text}>Create an account below</Text> */}
          <TextInput onChangeText={(text)=>this.setState({email: text})} value={this.state.email} style={styles.form} placeholder = "Username" placeholderTextColor="#8FBDBE">
          </TextInput>
          <TextInput onChangeText={(text)=>this.setState({password: text})} value={this.state.password} secureTextEntry={true} style={styles.form} placeholder = "Password" placeholderTextColor="#8FBDBE">
          </TextInput>
          <Text style={styles.forgetPass}  onPress={this._showConfirm}>Forget password ?</Text>
          {notifi}
          {/* <Button title="Create User" onPress={this.addUser} style={styles.buttonSubmit}></Button> */}
          <Button title="Login" onPress={this.loginUser} style={styles.buttonSubmit} color="#F5D242"></Button>
          {/* <Button title="register" onPress={this._showMoreApp} style={styles.buttonSubmit}/> */}
        </View>
        <Text style={styles.signUp} onPress={this._showMoreApp}>Sign up an account</Text>
      </View>
      </ImageBackground>
      
    </View>
  );
  }
  
}

// LoginScreen.navigationOptions = {
//   title: 'Login',
// };

const styles = StyleSheet.create({
    warning:{
      fontSize:12,
      color:'#FF5733',
      marginBottom:10
    },
    signUp:{
      display:'flex',alignItems:'center',textAlign:'center', flex:0.6, marginTop:20,fontSize:12,color: '#8FBDBE'
    },
    forgetPass:{
      display: 'flex',
      alignItems: 'center',
      textAlign: 'right',
      lineHeight: 14,
      color: '#8FBDBE',
      fontSize:12,
      marginTop:9,
      marginBottom:10
    },
    cavas:{
      textAlign: 'center', flex:2.5, alignItems: 'stretch',paddingTop:70,paddingBottom:30,
    },
    cavasImg:{
      width: 150,
      height: 150
    },
    container: {
      fontFamily: 'Roboto',
      flex: 1,
      backgroundColor: '#fff',
    },
    spacer: {
      flex: 1,
    },
    textContainer: {
      flex: 3,
      marginHorizontal: 40,
      // paddingTop: 100
    },
    text: {
      fontSize: 17,
      color: 'rgba(96,100,109, 1)',
      lineHeight: 24,
      textAlign: 'center',
    },
    form:{
      // borderBottomColor: 'rgba(129, 127, 127, 1)',
      color:'#8FBDBE',
      borderBottomColor:'#8FBDBE',
      borderBottomWidth: 0.7,
      padding: 5,
      marginTop: 20
    },
    buttonSubmit:{
      // marginTop: 15
    },
  });