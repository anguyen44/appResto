import React from 'react';
import { ScrollView, StyleSheet,FlatList,TouchableOpacity,Text,Platform,View,AsyncStorage,Button } from 'react-native';



export default class LinksScreen extends React.Component {

  constructor(props){
    super(props)
    
}
 
  logout=async()=>{
    // console.log('logout called');
    // FirebaseAPI.logoutUser();

    await AsyncStorage.clear();
    // InteractionManager.runAfterInteractions(()=>{
      this.props.navigation.navigate('AuthLoading');
    // })
  }





  render(){
    console.disableYellowBox = true;
    return (
      <View style={styles.tabBarInfoContainer}>
        
        <TouchableOpacity onPress={()=>{this.logout(this.props.navigation)}}>
            <Text style={styles.tabBarInfoText}>
               Logout
            </Text>
          </TouchableOpacity>
      </View>
    );
        }
  
  
}

LinksScreen.navigationOptions = {
  title: 'Links',
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    paddingTop: 15,
    backgroundColor: '#fff',
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
  }
});
