import 'package:flutter/material.dart';
import 'loginScreen.dart';
import 'applicantDetail.dart';

void main() => runApp(MyApp());

// todo: call of loginScreen from loginScreen.dart page
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login Ui",
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

// todo: call of signUp from signUp.dart page
/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "SignUp Ui",
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}*/

// todo: call of candidateDetails page
/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Candidate Details",
      debugShowCheckedModeBanner: false,
      home: ApplicantDetail(),
    );
  }
}*/


