import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ApplicationInitializationEvent extends Equatable {

  ApplicationInitializationEvent() : super();
}

class ApplicationBooted extends ApplicationInitializationEvent {
  
  ApplicationBooted() : super();

  @override
  List<Object> get props => [];
}