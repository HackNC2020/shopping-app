


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/listings/bloc/listings-states.dart';
import 'package:shopping_app/listings/bloc/listings.events.dart';
import 'package:shopping_app/listings/models/listing.dart';

class ListingsBloc extends Bloc<ListingsEvent, ListingsState> {
  ListingsBloc(ListingsState initialState) : super(initialState);


  @override
  Stream<ListingsState> mapEventToState(ListingsEvent event) async* {
    
    if (event is ListingLoaded) {
      yield await this.onListingLoaded(event);
    }

    if (event is ListingsNotFound) {
      yield await this.onListingsNotFound(event);
    }

    if (event is ListingLoadFailed) {
      yield await this.onListingLoadFailed(event);
    }

    if (event is ListingsRequested) {
      yield ListingsLoading();
      yield await this.onListingsRequested(event);
    }
  }

 
  // Private methods

  Future<ListingsState> onListingLoaded(ListingLoaded event) async {
    return ListingsPresent(event.listings);
  }

  Future<ListingsState> onListingsNotFound(ListingsNotFound event) async {
    return ListingEmpty();
  }

  Future<ListingsState> onListingLoadFailed(ListingLoadFailed event) async {
    return ListingsInvalid(event.error);
  }

  Future<ListingsState> onListingsRequested(ListingsRequested event) async {
     // get the listings
     List<Listing> listings = [];

    // populate listings
    listings.add(new Listing("Movie Night at the Den", "Join us for some fun and hacking", new DateTime(2020, 11, 12), new DateTime(2020, 11, 14), '123 Main St, Raleigh NC', "123ddgwewdcs", 500, "https://res.cloudinary.com/devex/image/fetch/c_scale,f_auto,q_auto,w_720/https://lh4.googleusercontent.com/VQyrPPyh-FGdV2BJtlcwDphesnxERD6SLWvGtARygLDVNSsXhFF0kzG_yXvLyiARZbKIG3VYF_CIbF4_B-Wy3Eu7kKhHKKR3pq_2ob2pdZgxt_Wz_uqXjRMrhIBKREQnJo--Ui9b"));
    listings.add(new Listing("Hackathon with Friends", "Join us for some fun and hacking", new DateTime(2020, 11, 13), new DateTime(2020, 11, 14), '145 Main St, Raleigh NC', "123ddgwewdcs", 500, "https://res.cloudinary.com/devex/image/fetch/c_scale,f_auto,q_auto,w_720/https://lh4.googleusercontent.com/VQyrPPyh-FGdV2BJtlcwDphesnxERD6SLWvGtARygLDVNSsXhFF0kzG_yXvLyiARZbKIG3VYF_CIbF4_B-Wy3Eu7kKhHKKR3pq_2ob2pdZgxt_Wz_uqXjRMrhIBKREQnJo--Ui9b"));
    listings.add(new Listing("Hackathon with Friends", "Join us for some fun and hacking", new DateTime(2020, 11, 12), new DateTime(2020, 11, 14), '123 Main St, Raleigh NC', "123ddgwewdcs", 500, "https://res.cloudinary.com/devex/image/fetch/c_scale,f_auto,q_auto,w_720/https://lh4.googleusercontent.com/VQyrPPyh-FGdV2BJtlcwDphesnxERD6SLWvGtARygLDVNSsXhFF0kzG_yXvLyiARZbKIG3VYF_CIbF4_B-Wy3Eu7kKhHKKR3pq_2ob2pdZgxt_Wz_uqXjRMrhIBKREQnJo--Ui9b"));
    listings.add(new Listing("Hackathon with Friends", "Join us for some fun and hacking", new DateTime(2020, 11, 12), new DateTime(2020, 11, 14), '123 Main St, Raleigh NC', "123ddgwewdcs", 500, "https://res.cloudinary.com/devex/image/fetch/c_scale,f_auto,q_auto,w_720/https://lh4.googleusercontent.com/VQyrPPyh-FGdV2BJtlcwDphesnxERD6SLWvGtARygLDVNSsXhFF0kzG_yXvLyiARZbKIG3VYF_CIbF4_B-Wy3Eu7kKhHKKR3pq_2ob2pdZgxt_Wz_uqXjRMrhIBKREQnJo--Ui9b"));

    if (listings.isEmpty) {
      return ListingEmpty();
    }
    else {
      return ListingsPresent(listings);
    }
  }
}