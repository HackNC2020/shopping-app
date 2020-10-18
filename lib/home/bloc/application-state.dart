import 'package:equatable/equatable.dart';

abstract class ApplicationState extends Equatable {
  @override
  List<Object> get props => [];

  String toString() {
    return "Homescreen State";
  }
}

class ApplicationInitializing extends ApplicationState {
  @override
  String toString() {
    return 'Application Initializing';
  }
}

class ApplicationStarted extends ApplicationState {
  @override
  String toString() {
    return 'Application Started';
  }
}

class ApplicationUninitialized extends ApplicationState {
  @override
  String toString() {
    return 'Application Uninitialized';
  }
}
