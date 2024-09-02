import 'package:bloc_tutorial/bloc/notification_bloc/notification_bloc.dart';
import 'package:bloc_tutorial/bloc/notification_bloc/notification_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationBlocListener extends StatelessWidget {
  const NotificationBlocListener({super.key , required this.child});
final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<NotificationBloc, NotificationState>(
          listenWhen: (previous, current) {
           return current is NotificationStateShowMessage;
          
          },
          listener: (context, state) {
           if (state is NotificationStateShowMessage){
            switch(state.type.toLowerCase()){
              case "info":
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(state.message , style:const  TextStyle(color: Colors.white),),
                ) , backgroundColor: Colors.green,)
              );
              break;
              case "error":
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(state.message , style:const  TextStyle(color: Colors.white),),
                ) , backgroundColor: Colors.red,)
              ); 
              break;
            }
           }
          },
          child: child,
        );
  }
}