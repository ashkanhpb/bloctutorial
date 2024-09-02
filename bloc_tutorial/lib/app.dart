import 'package:bloc_tutorial/bloc/notification_bloc/notification_bloc.dart';
import 'package:bloc_tutorial/bloc/notification_bloc/notification_state.dart';
import 'package:bloc_tutorial/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => NotificationBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocListener<NotificationBloc, NotificationState>(
          listenWhen: (previous, current) {
           return false;
          
          },
          listener: (context, state) {
           if (state is NotificationStateShowMessage){
            switch(state.type.toLowerCase()){
              case "info":
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message , style:const  TextStyle(color: Colors.white),) , backgroundColor: Colors.red,)
              );
              break;
              case "error":
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.message , style:const  TextStyle(color: Colors.white),) , backgroundColor: Colors.red,)
              ); 
              break;
            }
           }
          },
          child: const HomePage(title: 'برنامه من'),
        ),
      ),
    );
  }
}
