import React, {Component} from 'react'
import {
    Text,
    StyleSheet
} from 'react-native'

export default class Programme extends Component {
    render(){
        return (
            <Text style={styles.containerProgramme} >{this.props.prog}</Text>
        )
    }
}

const styles = StyleSheet.create({
    containerProgramme: {
        textTransform: "uppercase",
        fontWeight: "bold",
        marginRight: 46
    }
})