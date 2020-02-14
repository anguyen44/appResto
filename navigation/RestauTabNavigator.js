import React from 'react';
import { Platform } from 'react-native';
import { createStackNavigator, createBottomTabNavigator } from 'react-navigation';

import TabBarIcon from '../components/TabBarIcon';
import HomeScreen from '../screens/HomeScreen';
import Index2Screen from '../screens/Index2Screen';
import LinksScreen from '../screens/LinksScreen';
import SettingsScreen from '../screens/SettingsScreen';
import ProfilScreen from '../screens/ProfilScreen';
import MenuScreen from '../screens/MenuScreen';
import RestauScreen from '../screens/RestauScreen';
import SavoiPlusScreen from '../screens/SavoirPlusScreen';
import Index3Screen from '../screens/Index3Screen';
import RestoProfileScreen  from '../screens/RestoProfileScreen';

const config = Platform.select({
  web: { headerMode: 'screen' },
  default: {},
});

const HomeStack = createStackNavigator(
  {
    Home: Index3Screen,
    SavoirPlus: SavoiPlusScreen,
  },
  config
);

HomeStack.navigationOptions = {
  tabBarLabel: 'Home',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon

      focused={focused}
      name={
        Platform.OS === 'ios'
          ? `ios-home${focused ? '' : '-outline'}`
          : 'md-home'
      }
    />
  ),
};

HomeStack.path = '';

const LinksStack = createStackNavigator(
  {
    Links: ProfilScreen,
  },
  config
);

LinksStack.navigationOptions = {
  tabBarLabel: 'Profile',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name={Platform.OS === 'ios' ? 'ios-person' : 'md-person'} />
  ),
};

LinksStack.path = '';


const SettingsStack = createStackNavigator(
  {
    Settings: MenuScreen,
  },
  config
);

SettingsStack.navigationOptions = {
  tabBarLabel: 'Menu',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name={Platform.OS === 'ios' ? 'ios-menu' : 'md-menu'} />
  ),
};

SettingsStack.path = '';

const ResStack = createStackNavigator(
  {
    Settings: RestoProfileScreen,
    Menudujour: MenuScreen,
  },
  config
);

ResStack.navigationOptions = {
  tabBarLabel: 'Restaurant',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name={Platform.OS === 'ios' ? 'ios-pizza' : 'md-pizza'} />
  ),
};

ResStack.path = '';

const RestoProfileStack = createStackNavigator(
  {
    Settings: RestauScreen,
  },
  config
);

RestoProfileStack.navigationOptions = {
  tabBarLabel: 'Restauranttest',
  tabBarIcon: ({ focused }) => (
    <TabBarIcon focused={focused} name={Platform.OS === 'ios' ? 'ios-pizza' : 'md-pizza'} />
  ),
};

RestoProfileStack.path = '';


const tabNavigator = createBottomTabNavigator({
  HomeStack,
  LinksStack,
  ResStack,
  RestoProfileStack
});

tabNavigator.path = '';

export default tabNavigator;
