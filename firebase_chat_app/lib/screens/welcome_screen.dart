import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'registration_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:firebase_chat_app/components/round_button.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this,
      duration: Duration(seconds: 2),
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.decelerate);
//    animation = ColorTween(begin: Colors.black, end: Color(0xff0A0E21)).animate(controller);
    controller.forward();
//    animation.addStatusListener((status) {
//      if(status == AnimationStatus.completed){
//        controller.reverse(from: 1.0);
//      }else if(status == AnimationStatus.completed){
//        controller.forward();
//      }
//    });
    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      child: Image.asset('images/logo.png'),
                      height: animation.value * 60,
                    ),
                  ),
                ),
                Flexible(
                  child: TypewriterAnimatedTextKit(
                    text: ['Firebase Chat App',
                      'RealTime.',
                      'Stay Connected.',
                    ],
                    textStyle: TextStyle(
                      fontSize: 31.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF4C4F5E),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 45.0,
            ),
            RoundedButton(
              colour: Color(0xFF24D876),
              text: 'Login',
              style: TextStyle(
                color: Color(0xFF1F1D33),
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            RoundedButton(
              colour: Color(0xFFEB1555),
              text: 'Register',
              style: TextStyle(
//                color: Color(0xFF1F1D33),
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
              onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

