import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:life_app_ui/constants.dart';
import 'package:life_app_ui/screens/yoga_detail_screen.dart';

import 'package:life_app_ui/widgets/bottom_nav_bar.dart';



class YogaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
      
    
    return Scaffold(
       bottomNavigationBar: BottomNavBar(),
      body: Stack(
        children: [
          Container(
             decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.bottomRight,
                image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              ),
            ),
            height: size.height*.45,
            
          ),
          SafeArea(
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
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                 ),
                Center(
                  
                  child: Text(
                    
                      "Do these Exercises \n for 3 minutes",
                      textAlign: TextAlign.center,
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                ),
                SizedBox(
                  height: size.height*.1,
                ),
                Expanded(
                      child:
                        ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // padding: EdgeInsets.all(20),
        width: 380,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 17),
              blurRadius: 17,
              spreadRadius: -23,
              color: kShadowColor,
            ),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  
                  Hero(
                    tag:1,
                    child: SvgPicture.asset("assets/icons/yoga.svg" , width: 250,)),
                  Spacer(),
                  Text(
                    'Build your practice with a new medication every day. Each session has its on unique theme and replaces the one from the day before',
                    textAlign: TextAlign.center,
                  
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(fontSize: 15),

                  ),
                   Spacer(),
                  Container(
                    width: 250,
                     decoration: BoxDecoration(
                        color: Colors.purple[300],
                        borderRadius: BorderRadius.circular(20),
                        
                      ),
                      
                    child: TextButton(
                      
                      
                      
                      onPressed:  () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return YogaDetailScreen();
                              }),
                            );
                          },
                      child: Text(
                      'Start Now',
                      
                      textAlign: TextAlign.right,
                       style: TextStyle(color: Colors.white,fontSize: 24),
                     

                    ), 
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
        ),
      ),
    ),
  

                  ),
                  SizedBox(
                  height: size.height*.1,
                ),
                
              ],
            ),
            
          ),

      ],),
      
    );
  }
}