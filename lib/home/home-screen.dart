import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/home/bloc/application-bloc.dart';
import 'package:shopping_app/home/bloc/application-state.dart';
import 'package:shopping_app/home/bloc/application-event.dart';
import 'package:shopping_app/listings/listings-screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/';

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ApplicationBloc, ApplicationState>(
        builder: (context, state) {
      Widget screen;

      // check for auth? if no auth, route to login; else, route to listings

      if (state is ApplicationStarted) {
        // initialization complete
        BlocProvider.of<ApplicationBloc>(context).add(ApplicationBooted());
        screen = ListingsScreen();
      } else {
        // still initializing
        screen = Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }

      return screen;
    });
  }
}

/*
Scaffold(
  appBar: AppBar(
    title: Text('Home', style: Theme.of(context).textTheme.headline1),
    backgroundColor: Colors.white,
  ),
  drawer: NavDrawer()
  body: ...
)

*/
