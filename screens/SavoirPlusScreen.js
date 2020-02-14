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
    ScrollView,
    Share,
    Alert,
    ImageBackground,
    AsyncStorage
} from 'react-native';
import {API, API_SERVER} from '../apiurl';
import Communications, { phonecall } from 'react-native-communications';



import Programme from './Programme';
const {width, height} = Dimensions.get('window');


export default class SavoiPlusScreen extends Component {
    static navigationOptions = {
        header: null
      };
    constructor(props){
        super(props)
        //console.log(this.props.navigation.state.params.restaurant_id);
        this.state = {
            restaurant_id : this.props.navigation.state.params.restaurant_id,
            dataSource:  new ListView.DataSource({rowHasChanged: (r1, r2) => r1 !== r2}),
            basedb: []
        }

    }
    shareMenu(rowData){
        Share.share({
            message: "Menu du jour: "+ rowData.nom+ "  Entrées : \n \t -" + rowData.entree1 + "\n  \t \t - "+ rowData.entree2 + "\n Plats : \n \t \t-" + rowData.plat1 +"\n" + rowData.plat2 +
             "\n Dessert: \n \t -" + rowData.dessert1 + "\n  \t \t - "+ rowData.dessert2 +  " \n  Prix : " + rowData.prixEPD + " euros ",

        }).then(this.showResult);
    }
    fetchData = async()=>{
        console.log(this.state.restaurant_id);
        const reponse = await fetch(API+'/joursouvertures/'+this.state.restaurant_id);
         const horaires = await reponse.json();
         this.state.basedb= horaires;
         this.setState({
             dataSource: this.state.dataSource.cloneWithRows(this.state.basedb)
         });
     }

     componentDidMount(){
         this.fetchData();
    }


    renderRow(Data){
        console.log("dataOuvertures *********: ",this.state.basedb);
        var ouvertlundiMidi; var fermé;
       if (Data.lundiMidi != 0)  { ouvertlundiMidi= "ouvert le midi";}
        var ouvertlundiSoir;
        if (Data.lundiSoir != 0) { ouvertlundiSoir= "  ouvert le soir";}
        if(Data.lundiSoir == 0 && Data.lundiMidi == 0) { fermé = "fermé"}

        var ouvertmardiMidi;
        if (Data.mardiMidi != 0) { ouvertmardiMidi= "ouvert le midi";}
        var ouvertmardiSoir;
        if (Data.mardiSoir != 0) { ouvertmardiSoir= "  ouvert le soir";}
        if(Data.mardiSoir == 0 && Data.mardiMidi == 0) { fermé = "fermé"}

        var ouvertmercrediMidi;
        if (Data.mercrediMidi != 0) { ouvertmercrediMidi= "ouvert le midi";}
        var ouvertmercrediSoir;
        if (Data.mercrediSoir != 0) { ouvertmercrediSoir= "  ouvert le soir";}
        if(Data.mercrediSoir == 0 && Data.mercrediMidi == 0) { fermé = "fermé"}

        var ouvertjeudiMidi;
        if (Data.jeudiMidi != 0) { ouvertjeudiMidi= "ouvert le midi";}
        var ouvertjeudiSoir;
        if (Data.jeudiSoir != 0) { ouvertjeudiSoir= "  ouvert le soir";}
        if(Data.jeudiSoir == 0 && Data.jeudiMidi == 0) { fermé = "fermé"}

        var ouvertvendrediMidi;
        if (Data.vendrediMidi != 0) { ouvertvendrediMidi= "ouvert le midi";}
        var ouvertvendrediSoir;
        if (Data.vendrediSoir != 0) { ouvertvendrediSoir= "  ouvert le soir";}
        if(Data.vendrediSoir === 0 && Data.vendrediMidi === 0) { fermé = "fermé"}

        var ouvertsamediMidi;
        if (Data.samediMidi != 0) { ouvertsamediMidi= "ouvert le midi";}
        var ouvertsamediSoir;
        if (Data.samediSoir != 0) { ouvertsamediSoir= "  ouvert le soir";}
        if(Data.samediSoir == 0 && Data.samediMidi == 0) { fermé = "fermé"}

        var ouvertdimanceMidi;
        if (Data.dimancheMidi != 0) { ouvertdimancheMidi= "ouvert le midi";}
        var ouvertdimancheSoir;
        if (Data.dimancheSoir != 0) { ouvertdimancheSoir= "  ouvert le soir";}
        if(Data.dimancheSoir == 0 && Data.dimancheMidi == 0) { fermé = "fermé"}


        return(

            <TouchableHighlight style={styles.containerCell}
            >
                <View>
                    <View style={styles.footerContainer}>
                        <View style={styles.footerTextContainer}>
                        <Image style = {{width: width, height: 250}} source={{uri: API_SERVER+'/api/upload/images/'+Data.filename}}/>

                            <View style={styles.elmm}>
                            <Text style={styles.text}>{Data.nom}</Text>
                            <Text style={styles.textadd}> <Image 
                                style={{width: 19, height: 27}}/> {Data.adressePostale}</Text>
                            </View>
                            <View style={styles.containerelem}>
                            <Text style={styles.textTitle}><Programme prog ='Entrees:'></Programme> 
                           </Text> 
                            <View style={styles.elementsMenu}>
                                <Text>{Data.entree1}</Text>
                                <Text>{Data.entree2}</Text>
                            </View>
                            </View>

                            <View style={styles.containerelem}>
                            <Text style={styles.textTitle}> <Programme prog ='Plats:'></Programme></Text> 
                            <View style={styles.elementsMenu}>
                                <Text>{Data.plat1}</Text>
                                <Text>{Data.plat2}</Text>
                            </View>
                            </View> 

                            <View style={styles.containerelem}>
                            <Text style={styles.textTitle}><Programme prog ='Desserts:'></Programme></Text>  
                            <View style={styles.elementsMenu}>
                                <Text>{Data.dessert1}</Text>
                                <Text>{Data.dessert2}</Text>
                            </View>
                            </View>



                           <Text style={[styles.ttextTitle, textAlign = "right"]}><Programme prog ='Prix:'></Programme> {"\t"}{Data.prixEPD} {"\t"}euros </Text>
                            <View style ={styles.viewbutt}>
                          <View style={styles.butt}><Button title ="Réserver ma table !"  onPress = {() => phonecall(Data.num_telephone, true)} /*color="#F5D242"*/ color ='#F5D242' /></View>
                         <View style={styles.butt2}><Button title=" Partager !! " onPress = {()=> this.shareMenu(Data)} /></View>

                           </View>


                        </View>

                        <View>
                     <Text style={[styles.textTitle, textAlign = "right",styles.textBold]}>JOURS D'OUVERTURE:</Text>
                     </View>
                    <View>   
                    <Text style = {styles.textBold}>Lundi :</Text><Text style ={styles.ouvert}> {ouvertlundiMidi}{ouvertlundiSoir}{fermé}</Text>
                    </View>

                     <View>
                     <Text style = {styles.textBold}>Mardi :</Text><Text style ={styles.ouvert}> {ouvertmardiMidi}{ouvertmardiSoir}{fermé}</Text>
                     </View>
                     <View>
                     <Text style = {styles.textBold}>Mercredi:</Text><Text style={styles.ouvert}> {ouvertmercrediMidi}{ouvertmercrediSoir}{fermé}</Text>
                     </View>
                     <View>
                     <Text style = {styles.textBold}>Jeudi: </Text><Text style ={styles.ouvert}> {ouvertjeudiMidi}{ouvertjeudiSoir}{fermé}</Text>
                     </View>
                     <View>
                     <Text style = {styles.textBold}>Vendredi:</Text><Text style ={styles.ouvert}>  {ouvertvendrediMidi}{ouvertvendrediSoir}{fermé} </Text>
                     </View>
                     <View>
                     <Text style = {styles.textBold}>Samedi:</Text><Text style ={styles.ouvert}> {ouvertsamediMidi}{ouvertsamediSoir}{fermé} </Text>

                     </View>
                     <View>
                     <Text style = {styles.textBold}>Dimanche:</Text><Text style ={styles.ouvert}>  {ouvertdimancheMidi}{ouvertdimancheSoir}{fermé}</Text>
                     </View>

                    </View>
                </View>
            </TouchableHighlight>

        );

    }
    render(){
    //    const restaurant_id = this.state.restaurant_id;
        return (
            <ScrollView style={styles.container} >
                <ListView 
                        enableEmptySections={true}
                        style={styles.listContainer}
                       renderRow={this.renderRow.bind(this)}
                       dataSource={this.state.dataSource}
              />

            </ScrollView>
        );
    }

}

const styles = StyleSheet.create({
    container: {
        flex: 1,
        marginTop:10,
        backgroundColor: '#C0C0C0'
    },
    textInput: {
        height: 30,
        borderWidth: 1,
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
        paddingBottom: 8,
        paddingLeft:6,
        // backgroundColor: '#C0C0C0'
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
      marginBottom: 10
    },
    containerelem: {
        marginBottom: 4
    },
    textadd: {
        position:'absolute',
        marginTop:-5,
        marginLeft: 230,

     },
    textBold: {
        fontWeight: "bold",
        fontSize : 18

    },
    elm:{
      //  paddingVertical: 130
      marginBottom: 40
    },
    textTitle: {
        fontSize: 15,
        color : '#161616',
        paddingVertical: 15,
        fontWeight: "normal"
    },
    viewbutt: {
       marginHorizontal: 30,
       marginTop: 10,
       marginBottom: 25
    },
    butt2: {
        marginLeft: 190,
        position: 'absolute'
    },
    ouvert : {
       position: "absolute", 
       marginLeft: 110,
    },
    butt: {
        marginRight: 170
       // marginRight: 10
    },
    textMenu: {
        fontSize: 20,
        color: '#fff'
    }
}) 