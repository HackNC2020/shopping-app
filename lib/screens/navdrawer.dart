// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:shopping_app/home/home-screen.dart';
import 'package:shopping_app/screens/profile.dart';
import 'package:shopping_app/screens/settings.dart';
import 'package:shopping_app/listings/listings-screen.dart';
import 'package:shopping_app/purchases/purchases-screen.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            'Drawer Header',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, HomeScreen.routeName);
          },
        ),
        ListTile(
          leading: Icon(Icons.account_circle),
          title: Text('Profile'),
          onTap: () {
            Navigator.pushNamed(context, ProfileScreen.routeName);
          },
        ),
        ListTile(
            leading: Icon(Icons.list),
            title: Text('Your Listings'),
            onTap: () {
              Navigator.pushNamed(context, ListingsScreen.routeName);
            }),
        ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            onTap: () {
              Navigator.pushNamed(context, PurchasesScreen.routeName);
            }),
        ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, SettingsScreen.routeName);
            }),
      ],
    ));
  }
}
