import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login "),
        elevation: 1,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
              left: deviceWidth * 0.02,
              right: deviceWidth * 0.02,
              bottom: deviceWidth * 0.06),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset('lib/assets/logo.png'),
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
                  // Respond to button press
                },
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: deviceHeight * 0.05),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Respond to button press
                },
                child: Text(
                  "Recuperar password",
                  style: TextStyle(fontSize: deviceHeight * 0.025),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Respond to button press
                },
                child: Text("Registar",
                    style: TextStyle(fontSize: deviceHeight * 0.025)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
