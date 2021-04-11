import 'package:flutter/material.dart';
import 'package:life_app_ui/screens/yoga_detail_screen.dart';
class YogaClock extends StatelessWidget {
  final int time;
  const YogaClock({
    Key key,
    this.time,
  
  
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        TweenAnimationBuilder<Duration>(
              duration: Duration(minutes: time),
              tween: Tween(begin: Duration(minutes: time), end: Duration.zero),
              onEnd: (){
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return YogaDetailScreen();
                              }),
                            );
                          },
              builder: (BuildContext context, Duration value, Widget child) {
              final minutes = value.inMinutes;
              final seconds = value.inSeconds % 60;
              return Padding(
                     padding: const EdgeInsets.symmetric(vertical: 5),
                     child: Text('$minutes:$seconds',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 50)));
              }),
      ),
      
    );
  }
}