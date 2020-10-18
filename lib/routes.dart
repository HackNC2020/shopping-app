// The application routes
import 'package:shopping_app/home/home-screen.dart';
import 'package:shopping_app/listings/listings-screen.dart';
import 'package:shopping_app/login/login-screen.dart';
import 'package:shopping_app/purchases/purchases-screen.dart';
import 'package:shopping_app/screens/settings.dart';
import 'package:shopping_app/screens/profile.dart';

final routes = {
  // define routes here
  HomeScreen.routeName: (_) => new HomeScreen(),
  LoginScreen.routeName: (_) => new LoginScreen(),
  PurchasesScreen.routeName: (_) => new PurchasesScreen(),
  ListingsScreen.routeName: (_) => new ListingsScreen(),
  SettingsScreen.routeName: (_) => new SettingsScreen(),
  ProfileScreen.routeName: (_) => new ProfileScreen(),
};
