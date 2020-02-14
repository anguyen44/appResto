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
  AsyncStorage,Button
} from 'react-native';

import { MonoText } from '../components/StyledText';
import * as FirebaseAPI from '../modules/firebaseAPI';
import * as ImagePicker from 'expo-image-picker';
import {API} from '../apiurl';

export default class RestauScreen extends React.Component{
  

  constructor(props){
    super(props);

    this.state = {
      photo: null,
      image: null,
      idRestaurant: null,
    };

    this.pickImage = this.pickImage.bind(this);
    this.postPicture = this.postPicture.bind(this);
  }

  pickImage = async () => {
      const result = await ImagePicker.launchImageLibraryAsync({
        allowsEditing: true,
        base64: true,
      });
  if (!result.cancelled) {
        this.setState({
          photo: result.uri,
        });
      }
    };

  logout(navigation){
    console.log('logout called');
    // FirebaseAPI.logoutUser();
    this.removeItemValue('userToken');

    InteractionManager.runAfterInteractions(()=>{
      navigation.navigate('Auth')
    });
  }
  async removeItemValue(key) {
    try {
      await AsyncStorage.removeItem(key);
      return true;
    }
    catch(exception) {
      return false;
    }
  }

  _pickImage = async () => {
    console.log("upload");
    let result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.All,
      allowsEditing: true,
      aspect: [4, 3],
      quality: 1
    });

    // console.log(result);

    if (!result.cancelled) {
      this.setState({ image: result.uri });
    }
  };


    
  fetchData = async(img)=>{

    const image = img;
    const idRestaurant = 1;
    console.log("Aloalo");
    //console.log(img);

    const data = {img,idRestaurant};

    const option = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify(data)
    };

    const reponse = await fetch(API+'/uploadImage',option);
    //const reponse = await fetch('http://192.168.1.98:4000/uploadImage',option);
    const data2 = await reponse.json();
  
    console.log(data2);

  }

  postPicture = async() =>{
    const apiUrl = API+'/uploadImage';
    const uri = this.state.image;
    const uriParts = uri.split('.');
    const fileType = uriParts[uriParts.length - 1];
    const formData = new FormData();
        formData.append('photo', {
          uri,
          name: `photo.${fileType}`,
          type: `image/${fileType}`,
        });
    const options = {
          method: 'POST',
          body: formData,
          headers: {
            Accept: 'application/json',
            'Content-Type': 'multipart/form-data',
          },
        };
    const reponse = await fetch(apiUrl, options);
    const data2 = await reponse.json();
    console.log(data2);
      }


  

  render(){
    let { image } = this.state;
    console.disableYellowBox = true;
    return (
    <View style={styles.container}>
      <View style={{flex:1, alignItems:'center',justifyContent:'center'}}>
        <Button
          title="Pick an image from camera roll"
          onPress={this._pickImage}>
        </Button>
        {image &&
          <Image source={{ uri: image }} style={{ width: 200, height: 200 }} />}
      </View>
      

      <View style={styles.tabBarInfoContainer}>
       
        <TouchableOpacity onPress={()=>{this.logout(this.props.navigation)}}>
            <Text style={styles.tabBarInfoText}>
               Logout
            </Text>
          </TouchableOpacity>

      </View>
    </View>
  );
  }
  
}

RestauScreen.navigationOptions = {
  header: null,
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  developmentModeText: {
    marginBottom: 20,
    color: 'rgba(0,0,0,0.4)',
    fontSize: 14,
    lineHeight: 19,
    textAlign: 'center',
  },
  contentContainer: {
    paddingTop: 30,
  },
  welcomeContainer: {
    alignItems: 'center',
    marginTop: 10,
    marginBottom: 20,
  },
  welcomeImage: {
    width: 100,
    height: 80,
    resizeMode: 'contain',
    marginTop: 3,
    marginLeft: -10,
  },
  getStartedContainer: {
    alignItems: 'center',
    marginHorizontal: 50,
  },
  homeScreenFilename: {
    marginVertical: 7,
  },
  codeHighlightText: {
    color: 'rgba(96,100,109, 0.8)',
  },
  codeHighlightContainer: {
    backgroundColor: 'rgba(0,0,0,0.05)',
    borderRadius: 3,
    paddingHorizontal: 4,
  },
  getStartedText: {
    fontSize: 17,
    color: 'rgba(96,100,109, 1)',
    lineHeight: 24,
    textAlign: 'center',
  },
  tabBarInfoContainer: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
    ...Platform.select({
      ios: {
        shadowColor: 'black',
        shadowOffset: { width: 0, height: -3 },
        shadowOpacity: 0.1,
        shadowRadius: 3,
      },
      android: {
        elevation: 20,
      },
    }),
    alignItems: 'center',
    backgroundColor: '#fbfbfb',
    paddingVertical: 20,
  },
  tabBarInfoText: {
    fontSize: 17,
    color: 'rgba(96,100,109, 1)',
    textAlign: 'center',
  },
  navigationFilename: {
    marginTop: 5,
  },
  helpContainer: {
    marginTop: 15,
    alignItems: 'center',
  },
  helpLink: {
    paddingVertical: 15,
  },
  helpLinkText: {
    fontSize: 14,
    color: '#2e78b7',
  },
});
