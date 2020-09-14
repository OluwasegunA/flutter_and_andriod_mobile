import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_chat_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebase_chat_app/components/round_button.dart';
import 'chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final textFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  bool showSpinner = false;
  final _logUser = FirebaseAuth.instance;
  String email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 200.0,
                    child: Image.asset('images/logo.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                controller: textFieldController,
                keyboardType: TextInputType.emailAddress,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  //Do something with the user input.
                  email = value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your Email'),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                controller: passwordFieldController,
                textAlign: TextAlign.center,
                obscureText: true,
                onChanged: (value) {
                  //Do something with the user input.
                  password = value;
                },
                decoration: kTextFieldDecoration.copyWith(hintText: 'Enter your password'),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(
                colour: Color(0xFF24D876),
                text: 'Login',
                style: TextStyle(
                  color: Color(0xFF1F1D33),
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
                onPressed: ()async {
                  textFieldController.clear();
                  passwordFieldController.clear();
                  setState(() {
                    showSpinner = true;
                  });
                  try {
                    final loginUser = await _logUser.signInWithEmailAndPassword(
                        email: email, password: password);
                    if(loginUser != null){
                      Navigator.pushNamed(context, ChatScreen.id);
                    }
                    setState(() {
                      showSpinner = false;
                    });
                  }
                  catch(e){
                    throw Exception(e);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
