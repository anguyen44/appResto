import React from 'react';
import { createAppContainer, createSwitchNavigator, createStackNavigator } from 'react-navigation';

import MainTabNavigator from './MainTabNavigator';
import RestauTabNavigator from './RestauTabNavigator';
import LoginScreen from '../screens/LoginScreen';
import AuthLoadingScreen from '../screens/AuthLoadingScreen';
import SigninScreen from '../screens/SigninScreen';
import RestauScreen from '../screens/RestauScreen';
import ConfirmCodeScreen from '../screens/ConfirmCodeScreen';
import SavoirPlusScreen from '../screens/SavoirPlusScreen';

const AuthStack = createStackNavigator({login: LoginScreen});
const SigninStack = createStackNavigator({signin: SigninScreen});
const RestauStack = createStackNavigator({restau: RestauScreen});
const ConfirmStack = createStackNavigator({confirm: ConfirmCodeScreen})
const SavoirPlusStack = createStackNavigator({savoirplus: SavoirPlusScreen});

export default createAppContainer(
  createSwitchNavigator({
    // You could add another route here for authentication.
    // Read more at https://reactnavigation.org/docs/en/auth-flow.html
    Main: MainTabNavigator,
    Auth: AuthStack,
    AuthLoading: AuthLoadingScreen,
    Signin: SigninStack,
    Restaurateur: RestauTabNavigator,
    Confirm: ConfirmStack,
    SavoirPlus:SavoirPlusStack
  },{
    initialRouteName: 'AuthLoading'
  })
);
