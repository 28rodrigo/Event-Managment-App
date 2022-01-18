import 'package:flutter/material.dart';

class CreateUser extends StatelessWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Novo Utilizador",
          style: TextStyle(fontSize: deviceHeight * 0.03),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(
                left: deviceWidth * 0.02,
                right: deviceWidth * 0.02,
                bottom: deviceWidth * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    initialValue: '',
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                      labelText: 'Username',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    initialValue: '',
                    keyboardType: TextInputType.emailAddress,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.email_outlined),
                      labelText: 'Email',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    initialValue: '',
                    keyboardType: TextInputType.number,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.cake_outlined),
                      labelText: 'Idade',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    initialValue: '',
                    keyboardType: TextInputType.number,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.maps_home_work_sharp),
                      labelText: 'Organização',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    initialValue: '',
                    keyboardType: TextInputType.number,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.work_outline),
                      labelText: 'Emprego',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
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
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(deviceWidth * 0.6, deviceHeight * 0.08)),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'Registar',
                    style: TextStyle(
                        fontSize: deviceHeight * 0.05, color: Colors.white),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Já tem conta?",
                      style: TextStyle(fontSize: deviceHeight * 0.025),
                    ),
                    TextButton(
                      onPressed: () {
                        // Respond to button press
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(fontSize: deviceHeight * 0.025),
                      ),
                    ),
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
