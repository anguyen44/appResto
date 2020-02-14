import React, {Component} from 'react';
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
    ScrollView,
    TouchableOpacity,
    InteractionManager,
    Button,
    Share,
    Alert,
    ImageBackground,
    AsyncStorage
} from 'react-native';

import withNavigation from 'react-navigation';

import Communications, { phonecall } from 'react-native-communications';
import Navbar from './Navbar';
import Programme from './Programme';
import SavoiPlusScreen from './SavoirPlusScreen';
import {API, API_SERVER} from '../apiurl';

const {width, height} = Dimensions.get('window');

//export default withNavigation(SavoirPlusScreen);
export default class Index3Screen extends Component {
    static navigationOptions = {
        header: null
      };

    constructor(props){
        super(props)
        this.shareMenu = this.shareMenu.bind(this);
        this.showResult = this.showResult.bind(this);
        this.state = {
            isLoaded: false,
            isOpenMenu: false,
            dataSource:  new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2}),
            rotateY: new Animated.Value(0),
            translateX: new Animated.Value(width),
            menuAnimation: new Animated.Value(0),
            text: '',
            result: '',
            basedb: []
        }
    }

    fetchData = async()=>{
       // const reponse = await fetch('http://172.30.135.99:4000/restaurants');
   //    const reponse = await fetch('http://172.30.139.236:4000/restaurantsMenu');
       const reponse = await fetch(API+'/restaurantsMenu');

        const restaurants = await reponse.json();
        this.state.basedb= restaurants;
        this.setState({
            dataSource: this.state.dataSource.cloneWithRows(this.state.basedb)
        });
    }

    componentDidMount(){
        this.fetchData();
    }


    showMenu(){
        if(this.state.isOpenMenu){
            console.log("******************i am open");
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
            console.log('********************i am close');
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
                     //   duration: 800
                     duration: 1000
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

    showResult(result){
        this.setState({result})
    }

    shareMenu(rowData){
        Share.share({
            message: "Menu du jour: "+ rowData.nom+ "  Entrées : \n \t -" + rowData.entree1 + "\n  \t \t - "+ rowData.entree2 + "\n Plats : \n \t \t-" + rowData.plat1 +"\n" + rowData.plat2 +
            "\n Dessert: \n \t -" + rowData.dessert1 + "\n  \t \t - "+ rowData.dessert2 +  " \n  Prix : " + rowData.prixEPD + " euros",

        }).then(this.showResult);
    }


    renderRow(rowData){
      //  const img = rowData.image;
        return (
            <TouchableHighlight style={styles.containerCell}
            >
                <View>
                    <View style={styles.footerContainer}>
                        <View style={styles.footerTextContainer}>
                        <Image style = {{width: width, height: 250}} source={{uri: API_SERVER+'/api/upload/images/'+rowData.filename}}/>
                            <View style={styles.elmm}>
                            <Text style={styles.text}>{rowData.nom}</Text>
                            <Text style={styles.textadd}> <Image 
                                style={{width: 19, height: 27}}/> {rowData.adressePostale}</Text>
                            </View>
                            <View style={styles.containerelem}>
                            <Text style={styles.textTitle}><Programme prog ='Entrees:'></Programme> 
                           </Text> 
                            <View style={styles.elementsMenu}>
                                <Text>{rowData.entree1}</Text>
                                <Text>{rowData.entree2}</Text>
                            </View>
                            </View>

                            <View style={styles.containerelem}>
                            <Text style={styles.textTitle}> <Programme prog ='Plats:'></Programme></Text> 
                            <View style={styles.elementsMenu}>
                                <Text>{rowData.plat1}</Text>
                                <Text>{rowData.plat2}</Text>
                            </View>
                            </View> 

                            <View style={styles.containerelem}>
                            <Text style={styles.textTitle}><Programme prog ='Desserts:'></Programme></Text>  
                            <View style={styles.elementsMenu}>
                                <Text>{rowData.dessert1}</Text>
                                <Text>{rowData.dessert2}</Text>
                            </View>
                            </View>



        <Text style={[styles.ttextTitle, textAlign = "right"]}><Programme prog ='Prix:'></Programme> {"\t"}{rowData.prixEPD} {"\t"}euros </Text>

                            <View style ={styles.viewbutt}>
                          <View style={styles.butt}><Button title ="Réserver ma table !"  onPress = {() => phonecall(rowData.num_telephone, true)} /*color="#F5D242"*/ color ='#F5D242' /></View>
                         <View style={styles.butt2}><Button title=" Partager !! " onPress = {()=> this.shareMenu(rowData)} /></View>

                           </View>

                           <View style ={styles.viewbutSavoir}><Button title=" En Savoir Plus "
                            onPress = {()=> this.props.navigation.navigate('SavoirPlus'
                              ,{restaurant_id : rowData.restaurant_id}
                            )} /></View> 
                        </View>

                    </View>
                </View>
            </TouchableHighlight>
        )
    }



    filterSearch(text){
        const newData = this.state.basedb.filter(function(item){
            const itemData = item.nom.toUpperCase()
            const textData = text.toUpperCase()
            return itemData.indexOf(textData) > -1
        })
        this.setState({
            dataSource: this.state.dataSource.cloneWithRows(newData),
            text: text
        })
    }

    render(){
       console.log("data: ",this.state.basedb);
       console.disableYellowBox = true;
        return (
            <ScrollView style={styles.container}>

                <Animated.View
                    style={[styles.content, {
                        width: width,
                      backgroundColor: '#F8F8FF',
                    //    backgroundColor: '#fff',
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
                </Animated.View>

                <Animated.View
                    style={[styles.menu, {
                        opacity: this.state.menuAnimation,
                        position: 'absolute',
                        width: 140,
                        left: 0,
                        top: 100,
                        backgroundColor: 'transparent',
                        backgroundColor: '#000'
                    }]}
                >
                    <Text style={styles.textMenu}>Accueil</Text>
                    <Text style={styles.textMenu}>Restaurants</Text>
                    <Text style={styles.textMenu}>Espace Restaurateurs</Text>
                    <Text style={styles.textMenu}>Mon compte</Text>
                    <Text style={styles.textMenu}>Suggestions</Text>
                </Animated.View>
            </ScrollView>

        )
    }
}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        marginTop:10
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
    //  color: '#fff',
        marginHorizontal: 10
    },
    content: {
        zIndex: 1
    },
    footerContainer: {
   //    flexDirection: 'row',
    //   paddingHorizontal: 10,
    //   paddingVertical: 10,
      // backgroundColor: '#555566' 
        paddingBottom: 12,
        paddingLeft:6,
         backgroundColor: '#C0C0C0'
    },
    listContainer: {
      //  marginHorizontal: 10

    },
    text: {
       // color: '#fff',
        color : '#161616',
        fontSize : 18,
        textTransform: 'uppercase',
        marginHorizontal: 10,
        paddingVertical: 10,
        fontWeight: "bold"
    },
    containerCell: {
      marginBottom: 20
    },
    containerelem: {
        marginBottom: 4
    },
     textadd: {
        position:'absolute',
        marginTop:-5,
        marginLeft: 230,

     },
    elm:{
      //  paddingVertical: 130
      marginBottom: 50
    },
    textTitle: {
        fontSize: 15,
      //  color: '#fff',
        color : '#161616',
        paddingVertical: 15,
        fontWeight: "normal"
    },
    elementsMenu: {
        marginTop: 5,
        marginLeft: 90,
        position: 'absolute',
      //  padding: 45

    },
    viewbutt: {
       marginHorizontal: 30,
       marginTop: 10
    },
    butt2: {
        marginLeft: 190,
        position: 'absolute'
    },
    butt: {
        marginRight: 170
       // marginRight: 10
    },
    viewbutSavoir : {
       marginTop: 12,
       width: 160,
       marginLeft: 120
    },
    textMenu: {
        fontSize: 40,
        color: '#fff'
    }
})