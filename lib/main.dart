import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practical_apps_using_riverpod/riverpod_counter/counter.dart';
import 'package:practical_apps_using_riverpod/tasbi/tasbiCount.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return
       ProviderScope(
         child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:Tasbi() ,
               ),
       );

  }
}

