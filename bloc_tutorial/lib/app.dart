import 'package:bloc_tutorial/bloc/notification_bloc/notification_bloc.dart';
import 'package:bloc_tutorial/home_page.dart';
import 'package:bloc_tutorial/listeners/notification_bloc_listener.dart';
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
          home: const NotificationBlocListener(
            child: const HomePage(title: "برنامه من "),
          )),
    );
  }
}
