import 'package:flutter/material.dart';

class ListingScreen extends StatelessWidget {
  // static String routeName = '/listing' + id ;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          //ListingRow(/*getListing(id)*/),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                textColor: const Color(0xFF6200EE),
                onPressed: () {
                  // ideally, open chat with seller
                },
                child: const Text('CONTACT'),
              ),
              /*FlatButton(
                textColor: const Color(0xFF6200EE),
                onPressed: () {
                  // add item to cart ... (for physical products)
                },
                child: const Text('ADD TO CART'),
              ),*/
            ],
          ),
        ],
      ),
    );
  }
}
