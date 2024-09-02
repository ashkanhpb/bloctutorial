
import 'package:bloc_tutorial/bloc/notification_bloc/notification_event.dart';
import 'package:bloc_tutorial/bloc/notification_bloc/notification_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBloc extends Bloc<NotificationEvent,NotificationState>{
  NotificationBloc():super(NotificationStateInit()){
    on<NotificationEventsShowMessage>(_onNotificationEventsShowMessage);
  }
Future<void>_onNotificationEventsShowMessage(NotificationEventsShowMessage event,Emitter<NotificationState> emit) async{
  emit(NotificationStateShowMessage(message: event.message, type: event.type , timestamp: event.timestamp)); 
}
}