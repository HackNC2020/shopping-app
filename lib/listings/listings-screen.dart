import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/listings/bloc/bloc.dart';
import 'package:shopping_app/listings/models/listing.dart';
import 'package:shopping_app/screens/navdrawer.dart';

class ListingsScreen extends StatelessWidget {
  static String routeName = '/listings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: Text('Listings', style: Theme.of(context).textTheme.headline1),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {})
          ],
          backgroundColor: Colors.white,
        ),
        drawer: NavDrawer(),
        body: BlocBuilder<ListingsBloc, ListingsState>(
          cubit: BlocProvider.of<ListingsBloc>(context),
          builder: (context, state) {
          Widget content;

          if (state is ListingsUninitialized) {
            BlocProvider.of<ListingsBloc>(context).add(ListingsRequested());
          }

          else if (state is ListingEmpty) {
            content = Center(child: Text("No listings to show"),);
          }
          else if (state is ListingsPresent) {
            content = ListView.builder(
              itemCount: state.listings.length,
              itemBuilder: (context, index) {
              return ListingRow(state.listings[index]);
            });
          }
          else if (state is ListingsLoading) {
            content = Center(child: CircularProgressIndicator(),);
          }
          else {
            content = Center(child: Text('Something went wrong'),);
          }

          return content;
        },
    ));
  }
}

// TODO: filter and sort listings by location proximity

class ListingRow extends StatelessWidget {
  final Listing listing;
  ListingRow(this.listing);
  @override
  Widget build(BuildContext context) {
    
    //Listing listing = getListing(id)

    return Card(
        //onTap: () {Navigator.pushNamed(ListingScreen(id))}, // go to product route
        child: Column(children: [
      ListTile(
          title: Text(listing.title),
          subtitle: Text(listing.id,
              style: TextStyle(
                  color: Colors.black.withOpacity(
                      0.6))) // TODO: add lister to model and replace id with lister
          ),
      Padding(
          padding: const EdgeInsets.all(16.0), child: Text(listing.description))
    ]));
  }
}
