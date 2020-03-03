import 'package:bloctest/blocs/timer_bloc.dart';
import 'package:bloctest/widgets/Timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromRGBO(109, 234, 255, 1),
        accentColor: Color.fromRGBO(72, 74, 126, 1),
        brightness: Brightness.dark,
      ),
      title: 'Flutter Bloc Timer',
      home: BlocProvider(
        create: (context)=>TimerBloc(ticker: Ticker()),
        child: Timer(),
      ),
    );
  }
}
