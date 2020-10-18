

import 'package:equatable/equatable.dart';
import 'package:shopping_app/listings/models/listing.dart';

abstract class ListingsState extends Equatable {

  List<Object> get props => [];

  @override
  String toString() {
    return 'Listings state';
  }
}

class ListingEmpty extends ListingsState {

  @override
  String toString() {
    return 'No Listings';
  }
}

class ListingsPresent extends ListingsState {

  final List<Listing> listings;

  ListingsPresent(this.listings) : super();

  @override
  List<Object> get props => [this.listings];
}

class ListingsInvalid extends ListingsState {
  final Exception error;

  ListingsInvalid(this.error) : super();

  List<Object> get props => [this.error];
}

class ListingsLoading extends ListingsState {
  ListingsLoading() : super();
}

class ListingsUninitialized extends ListingsState {
  ListingsUninitialized() : super();
}