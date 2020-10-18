

import 'package:equatable/equatable.dart';
import 'package:shopping_app/listings/models/listing.dart';

abstract class ListingsEvent extends Equatable {
  ListingsEvent() : super();
}

class ListingLoaded extends ListingsEvent {
  final List<Listing> listings;

  ListingLoaded(this.listings) : super();

  @override
  List<Object> get props => [this.listings];
}

class ListingLoadFailed extends ListingsEvent {
  final Exception error;

  ListingLoadFailed(this.error) : super();

  @override
  List<Object> get props => [this.error];
}

class ListingsNotFound extends ListingsEvent {
  ListingsNotFound() : super();

  @override
  List<Object> get props => [];
}

class ListingsRequested extends ListingsEvent {
  ListingsRequested() : super();

  @override
  List<Object> get props => [];
}