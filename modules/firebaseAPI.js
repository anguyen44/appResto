import * as firebase from 'firebase';

export const createUser = (email, password) => {
    console.log("connect firebase");

    firebase.auth().createUserWithEmailAndPassword(email,password)
    .catch((error)=> console.log('createUser error:',error));
}

export const loginUser = (email, password) => {

    firebase.auth().signInWithEmailAndPassword(email,password)
    .catch((error)=> console.log('createUser error:',error));
}

export const logoutUser = ()=>{
	firebase.auth().signOut();
}