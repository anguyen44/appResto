import React from 'react';
import {
  ActivityIndicator,
  AsyncStorage,
  StatusBar,
  StyleSheet,
  View,
} from 'react-native';
import firebase from 'firebase';

export default class AuthLoadingScreen extends React.Component {
  componentDidMount() {
    this._bootstrapAsync();
  }

  // Fetch the token from storage then navigate to our appropriate place
  _bootstrapAsync = async () => {
    // console.log("Authed User: ",firebase.auth().getCurrentUser);
    const userToken = await AsyncStorage.getItem('userToken');
    const username = await AsyncStorage.getItem('username');
    console.log("--------------------------",username);
    console.log(userToken);
    // this.props.navigation.navigate(userToken ? 'Main' : 'Auth');
    if(!userToken){
      await this.props.navigation.navigate('Auth');
    }else{
      await this.props.navigation.navigate(userToken=='restaurateur' ? 'Restaurateur' : 'Main');
    }
    // await this.props.navigation.navigate(userToken ? 'Main' : 'Auth');
  };

  // Render any loading content that you like here
  render() {
    return (
      <View>
        <ActivityIndicator />
        <StatusBar barStyle="default" />
      </View>
    );
  }
}