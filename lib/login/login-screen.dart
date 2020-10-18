import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: Theme.of(context).textTheme.headline1,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Username',
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
            obscureText: true,
          ),
          SizedBox(
            height: 24,
          ),
          RaisedButton(
            color: Colors.yellow,
            child: Text('ENTER'),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/catalog');
            },
          )
        ],
      ),
    );
  }
}
