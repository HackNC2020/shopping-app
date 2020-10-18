import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/home/bloc/application-bloc.dart';
import 'package:shopping_app/home/bloc/application-state.dart';
import 'package:shopping_app/listings/bloc/listings-bloc.dart';
import 'package:shopping_app/listings/bloc/listings-states.dart';
import './theme.dart';
import './routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ApplicationBloc>(create: (BuildContext context) => ApplicationBloc(ApplicationUninitialized())),
        BlocProvider<ListingsBloc>(create: (BuildContext context) => ListingsBloc(ListingsUninitialized())),
      ], 
      child: MaterialApp(title: 'Flutter Demo', theme: theme, routes: routes));
  }
}

/*class _MyAppState extends State<MyApp> {
  bool isLoggedIn = false;
  String username;
  String profilePicture;

  @override
  Widget build(BuildContext context) {
    return 
  }
}*/
