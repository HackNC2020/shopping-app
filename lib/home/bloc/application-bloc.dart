
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shopping_app/home/bloc/application-event.dart';
import 'package:shopping_app/home/bloc/application-state.dart';

class ApplicationBloc extends Bloc<ApplicationInitializationEvent, ApplicationState> {
  ApplicationBloc(ApplicationState initialState) : super(initialState);

  @override
  Stream<ApplicationState> mapEventToState(ApplicationInitializationEvent event) async* {
    
    if (event is ApplicationBooted) {
      yield ApplicationInitializing();
      yield await this.onStarted(event);
    }
  }

  /// Called when the application has been initated.
  
  Future<ApplicationState> onStarted(ApplicationBooted event) async {
    // Here is where we would run code that was necessary on startup.

    return ApplicationStarted();
  }
}