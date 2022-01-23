import 'package:eventapp/pages/createUserPage.dart';
import 'package:eventapp/pages/homePage.dart';
import 'package:eventapp/pages/recoverPasswordPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  String _username = "";
  String _token = '';

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
  }

  _loadUserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _username = (prefs.getString('username') ?? "");
    if (_username == "") {
      Navigator.pushNamedAndRemoveUntil(
          context, '/login', ModalRoute.withName('/login'));
    } else {
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    }
  }

//create landing//////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          "Login",
          style: TextStyle(fontSize: deviceHeight * 0.03),
        ),
      ),
      body: Container(
        child: Image.asset(
          "lib/assets/logo.png",
          width: deviceWidth * 0.7,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
