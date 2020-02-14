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
    TouchableOpacity,
    InteractionManager,
    Button,
    Share,
    Alert,
    AsyncStorage
} from 'react-native';

import Navbar from './Navbar';
import Programme from './Programme';
import API from '../apiurl';

const {width, height} = Dimensions.get('window');

export default class Index2Scre extends Component {
    static navigationOptions = {
        header: null
      };
    constructor(props){
        super(props)
        
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

        this.shareMenu = this.shareMenu.bind(this);
        this.showResult = this.showResult.bind(this);
        this.fetchData = this.fetchData.bind(this);
        this.showMenu = this.showMenu.bind(this);
        this.closeMenu = this.closeMenu.bind(this);
        this.filterSearch = this.filterSearch.bind(this);
    }

    fetchData = async()=>{
       // const reponse = await fetch('http://172.30.135.99:4000/restaurants');
       //const reponse = await fetch('http://172.30.139.236:4000/restaurantsMenu');
       const reponse = await fetch(API+'/restaurantsMenu');
        const restaurants = await reponse.json();
        this.state.basedb= restaurants;
        this.setState({
            // basedb:restaurants
            dataSource: this.state.dataSource.cloneWithRows(this.state.basedb)
        });
    }

    componentDidMount(){
        console.log("didmount est fait!!");
        this.fetchData();
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

    showResult(result){
        this.setState({result})
    }

    shareMenu(rowData){
        Share.share({
            message: "Menu du jour: "+ rowData.nom+ "  Entrées : \n \t -" + rowData.entree1 + "\n  \t \t - "+ rowData.entree2 + "\n Plats : \n \t \t-" + rowData.plat1 +"\n" + rowData.plat2 +
             "\n Dessert: \n \t -" + rowData.dessert1 + "\n  \t \t - "+ rowData.dessert2 +  " \n  Prix : " + rowData.prixPED,
        
        }).then(this.showResult);
    }

    renderRow(rowData){
      //  const img = rowData.image;
        return (
            <TouchableHighlight style={styles.containerCell}

            >
                <View>
                    <View style={styles.footerContainer}>
                        <View
                            style={styles.imageUser}
                        >
                        </View>
        
                        <View style={styles.footerTextContainer}>
                            <Text style={styles.text}>{rowData.nom}</Text>
                            <Text style={[styles.ttextTitle, textAlign= "right"]}> <Image 
                                style={{width: 19, height: 27}}
                              
                            /> {rowData.adressePostale}</Text>
                            
                            <Text style={styles.textTitle}>{"\n"}<Programme prog ='Entrees:'></Programme> 
                           </Text> 
                            <View>
                                <Text>{rowData.entree1}</Text>
                                <Text>{rowData.entree2}</Text>
                            </View>
                             
                            <Text style={styles.textTitle}> <Programme prog ='Plats:'></Programme></Text> 
                            <View>
                                <Text>{rowData.plat1}</Text>
                                <Text>{rowData.plat2}</Text>
                            </View>

                            <Text style={styles.textTitle}><Programme prog ='Desserts:'></Programme></Text> 
                            <View>
                                <Text>{rowData.dessert1}</Text>
                                <Text>{rowData.dessert2}</Text>
                            </View>

                            
                           <Text style={[styles.ttextTitle, textAlign = "right"]}><Programme prog ='Prix:'></Programme> {rowData.prixPED} euros </Text> 
                           <Button title=" Partager !! " onPress = {()=> this.shareMenu(rowData) }/>
                        </View>
                        
                    </View>
                </View>
            </TouchableHighlight>
        )
    }
    filterSearch(text){
       // const newData = data.filter(function(item){
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
       //console.log("data: ",this.state.basedb);
       console.disableYellowBox = true;
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
            </View>
            
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