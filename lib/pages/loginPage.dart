import 'package:eventapp/pages/createUserPage.dart';
import 'package:eventapp/pages/homePage.dart';
import 'package:eventapp/pages/recoverPasswordPage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: deviceHeight * 0.9,
            margin: EdgeInsets.only(
                left: deviceWidth * 0.02,
                right: deviceWidth * 0.02,
                bottom: deviceWidth * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  child: Image.asset(
                    "lib/assets/logo.png",
                    width: deviceWidth * 0.7,
                    fit: BoxFit.contain,
                  ),
                ),
                TextFormField(
                  initialValue: '',
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Username',
                    // errorText: 'Username incorreto!',
                    border: const OutlineInputBorder(),
                  ),
                ),
                TextFormField(
                  initialValue: '',
                  obscureText: true,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    icon: Icon(Icons.password),
                    labelText: 'Password',
                    //errorText: 'Password incorreta!',
                    border: const OutlineInputBorder(),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(deviceWidth * 0.6, deviceHeight * 0.1)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainHome()));
                  },
                  child: Text(
                    'Login',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.merge(TextStyle(fontSize: deviceHeight * 0.05)),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Esqueceu-se da password?",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.merge(TextStyle(fontSize: deviceHeight * 0.03)),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RecoverPassword()));
                      },
                      child: Text(
                        "Recuperar password",
                        style: TextStyle(fontSize: deviceHeight * 0.025),
                      ),
                    ),
                    Text(
                      "Não tem conta?",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.merge(TextStyle(fontSize: deviceHeight * 0.03)),
                    ),
                    TextButton(
                      onPressed: () {
                        // Respond to button press
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CreateUser()));
                      },
                      child: Text("Registar",
                          style: TextStyle(fontSize: deviceHeight * 0.025)),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
