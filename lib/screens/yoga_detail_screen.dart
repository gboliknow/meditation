
import 'package:flutter_svg/svg.dart';

import 'package:flutter/material.dart';
import 'package:life_app_ui/screens/yoga_clock.dart';

class YogaDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
              children:[
                 Container(
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.topLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                  "assets/icons/menu.svg",
                 
                ),
                  ),
                ),
              
                Text(
                  'Yoga',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 64,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,),
                ),
               
                SizedBox(height: size.height*0.08,),
                 Image.asset("assets/images/hourglass.png", width: 300,),
                 SizedBox(height: size.height*0.2,),
                 
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2BEA1),
              
          
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return YogaClock(
                            time: 15,
                          );
                        }),
                      );
                    },
                    child: Text(
                      '15 min',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.02,),
                 Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2BEA1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return YogaClock(
                            time: 10,
                          );
                        }),
                      );
                    },
                    child: Text(
                      '10 min',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
                SizedBox(height: size.height*0.02,),
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2BEA1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return YogaClock(
                            time: 5,
                          );
                        }),
                      );
                    },
                    child: Text(
                      '5 min',
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
              ],
      ),
              
    );
  }
}
