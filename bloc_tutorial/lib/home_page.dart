import 'package:bloc_tutorial/bloc/notification_bloc/notification_bloc.dart';
import 'package:bloc_tutorial/bloc/notification_bloc/notification_event.dart';
import 'package:bloc_tutorial/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    var notificationBloc=BlocProvider.of<NotificationBloc>(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {
                         
                        notificationBloc.add(NotificationEventsShowMessage(message: "این یک پیام اطلاعاتی است" , type: "info"));
                      },
                      child: const Text("ورود"),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {
                      
                        notificationBloc.add(NotificationEventsShowMessage(message: "این یک پیام خطااست" , type: "error"));
                      },
                      child: const Text("ثبت نام"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 200,
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {},
                      child: const Text("لیست اعضا"),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 80,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      onPressed: () {},
                      child: const Text("ارسال پیام"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
