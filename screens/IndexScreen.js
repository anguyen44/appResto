import React, {Component} from 'react'
import {
    Text,
    StyleSheet,
    View,
    ListView,
    TouchableHighlight,
    Dimensions,
    Image,
    Animated,
    TextInput,
    TouchableOpacity,
    InteractionManager,
    FlatList,
    AsyncStorage
} from 'react-native';
import data from '../data'
import Navbar from './Navbar'
import * as FirebaseAPI from '../modules/firebaseAPI';
import Programme from './Programme'
const {width, height} = Dimensions.get('window')

export default class Search extends Component {
    constructor(props){
        super(props);
        const ds = new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2})
        this.state = {
            isLoaded: false,
            isOpenMenu: false,
            dataSource: ds.cloneWithRows(data),
            rotateY: new Animated.Value(0),
            translateX: new Animated.Value(width),
            menuAnimation: new Animated.Value(0),
            text: '',
            data:[],
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

    showMenu(){
        if(this.state.isOpenMenu){
            this.setState({isOpenMenu: false})
            Animated.parallel([
                Animated.timing(
                    this.state.translateX, {
                        toValue: width
                    }
                ),
                Animated.timing(
                    this.state.rotateY, {
                        toValue: 0
                    }
                )
            ]).start()
        } else {
            this.setState({isOpenMenu: true})
            Animated.parallel([
                Animated.timing(
                    this.state.translateX, {
                        toValue: width * 0.60
                    }
                ),
                Animated.timing(
                    this.state.rotateY, {
                        toValue: 1
                    }
                ),
                Animated.timing(
                    this.state.menuAnimation, {
                        toValue: 1,
                        duration: 800
                    }
                )
            ]).start()
        }
    }

    closeMenu(){
        this.setState({isOpenMenu: false})
        Animated.parallel([
            Animated.timing(
                this.state.translateX, {
                    toValue: width
                }
            ),
            Animated.timing(
                this.state.rotateY, {
                    toValue: 0
                }
            ),
            Animated.timing(
                this.state.menuAnimation, {
                    toValue: 0,
                    duration: 300
                }
            )
        ]).start()
    }

    renderRow(rowData){
        const img = rowData.image
        return (
            <TouchableHighlight style={styles.containerCell}

            >
                <View>
                    <Image 
                        style={{width: width, height: 180}}
                        source={{uri: img}}
                    />
                    <View style={styles.footerContainer}>
                        <View
                            style={styles.imageUser}
                        >
                        </View>
                        <View style={styles.footerTextContainer}>
                            <Text style={styles.text}>{rowData.Nom_resto}</Text>
                             <Text style={styles.textTitle}><Programme prog ='Entrees:'></Programme>  {rowData.Entrees}</Text> 
                            <Text style={styles.textTitle}> <Programme prog ='Plats:'></Programme> {rowData.plats}</Text> 
                            <Text style={styles.textTitle}> <Programme prog ='Desserts:'></Programme> {rowData.desserts}</Text> 
                            <Text style={[styles.ttextTitle, textAlign= "right"]}> <Image 
                                style={{width: 19, height: 27}}
                                source={require('../assets/adr.png')}
                            /> {rowData.adresse_resto}</Text>
                           <Text style={[styles.ttextTitle, textAlign = "right"]}> <Programme prog ='Prix:'></Programme> {rowData.Prix} euros </Text> 
                        </View>
                    </View>
                </View>
            </TouchableHighlight>
        )
    }
    filterSearch(text){
        const newData = data.filter(function(item){
            const itemData = item.Nom_resto.toUpperCase()
            const textData = text.toUpperCase()
            return itemData.indexOf(textData) > -1
        })
        this.setState({
            dataSource: this.state.dataSource.cloneWithRows(newData),
            text: text
        })
    }

    fetchData = async()=>{
        //const reponse = await fetch('http://192.168.1.98:4000/utilisateurs');
        //const reponse = await fetch('http://192.168.43.247:4000/utilisateurs');
        const reponse = await fetch('http://172.30.139.236:4000/utilisateurs');
        const utilisateurs = await reponse.json();
        this.setState({data:utilisateurs});
    }

    componentDidMount(){
        this.fetchData();
    }
    
    render(){
        // console.log("data",this.state.data);
        return (
            <View style={styles.container}>
                <Animated.View
                    style={[styles.content, {
                        width: width,
                       backgroundColor: 'gray',
                       backgroundColor: '#fff',
                        flex: 1,
                    }]}
                >
                    {this.state.isOpenMenu ? <Navbar icon="times" showMenu={this.closeMenu.bind(this)}/> :
                     <Navbar icon="bars" showMenu={this.showMenu.bind(this)}/>}
                    <TextInput 
                        style={styles.textInput}
                        onChangeText={(text) => this.filterSearch(text)}
                        value={this.state.text}
                    />
                    
                    <ListView 
                        enableEmptySections={true}
                        style={styles.listContainer}
                        renderRow={this.renderRow.bind(this)}
                        dataSource={this.state.dataSource}
                    />
                    <FlatList
                        data={this.state.data}
                        keyExtractor={(item,index) => index.toString()}
                        renderItem={({item}) =>

                        <View style={{backgroundColor:'#abc123',padding:10,margin:10}}>
                            <Text style={{color:'#fff', fontWeight:'bold'}}>{item.username}</Text>
                            <Text style={{color:'#fff'}}>{item.password}</Text>
                            <Text>City: {item.email}</Text>
                            </View>

                        }
                        />
                </Animated.View>
                <Animated.View
                    style={[styles.menu, {
                        opacity: this.state.menuAnimation,
                        position: 'absolute',
                        width: 140,
                        left: 0,
                        top: 100,
                        backgroundColor: 'transparent'
                    }]}
                >
                    <Text style={styles.textMenu}>Accueil</Text>
                    <Text style={styles.textMenu}>Restaurants</Text>
                    <Text style={styles.textMenu}>Espace Restaurateurs</Text>
                    <Text style={styles.textMenu}>Mon compte</Text>
                    <Text style={styles.textMenu}>Suggestions</Text>
                </Animated.View>              
                <TouchableOpacity onPress={()=>{this.logout()}}>
                    <Text style={styles.tabBarInfoText}>
                    Logout
                    </Text>
                    
                </TouchableOpacity>
            </View>            
        )
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
       // backgroundColor: '#555566'
    },
    textInput: {
        height: 30,
        borderWidth: 1,
     //  borderColor: '#cecece',
        borderColor: '#000000',
        fontWeight:"bold",
        marginBottom: 10,
        color: '#000',
        marginHorizontal: 10
    },
    content: {
        zIndex: 1
    },
    footerContainer: {
       flexDirection: 'row',
       paddingHorizontal: 10,
       paddingVertical: 10,
      // backgroundColor: '#555566' 
    //  backgroundColor: '#f4a460'
         backgroundColor: '#EE7C13'
    },
    listContainer: {
        marginHorizontal: 10
    },
    text: {
     //   color: '#fff'
        color : '#161616',
        fontSize : 18,
        textTransform: 'uppercase',
        fontWeight: "bold"
    },
    containerCell: {
      marginBottom: 10
    },
    textTitle: {
        fontSize: 15,
        color : '#161616',
        fontWeight: "normal"
    },
    textMenu: {
        fontSize: 20,
        color: '#fff'
    }
})