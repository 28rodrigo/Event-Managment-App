import 'dart:ffi';

import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/proto/gen/eventApp.pbgrpc.dart';
import 'package:eventapp/services/userService.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';

class CreateUser extends StatefulWidget {
  const CreateUser({Key? key}) : super(key: key);

  @override
  State<CreateUser> createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  var usernameController = TextEditingController(text: "");
  var emailController = TextEditingController(text: "");
  var ageController = TextEditingController(text: "");
  var orgController = TextEditingController(text: "");
  var empregoController = TextEditingController(text: "");
  var passwordController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(
            'lib/assets/logo.png',
            fit: BoxFit.fill,
          ),
        ],
        elevation: 1,
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
                Text('Novo Registo',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.15)),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    controller: usernameController,

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
                    controller: emailController,

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
                    controller: ageController,

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
                    controller: orgController,

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
                    controller: empregoController,

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
                    controller: passwordController,

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
                  onPressed: () async {
                    if (usernameController.text.isEmpty ||
                        emailController.text.isEmpty ||
                        passwordController.text.isEmpty ||
                        ageController.text.isEmpty) {
                      final snackBar = SnackBar(
                        content: Text('Necessário preencher dados!'),
                        duration: Duration(seconds: 5),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);

                      return;
                    }
                    var newuser = createUserInfo();
                    newuser.username = usernameController.text;
                    newuser.email = emailController.text;
                    newuser.age = int.parse(ageController.text);
                    newuser.organization = orgController.text;
                    newuser.job = empregoController.text;
                    newuser.password = passwordController.text;

                    var response = await UserService().createUser(newuser);

                    if (response.state) {
                      final snackBar = SnackBar(
                        content: Text('Utilizador criado com sucesso!'),
                        duration: Duration(seconds: 5),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.pop(context);
                    } else {
                      final snackBar = SnackBar(
                        content: Text('Erro a criar utilizador!'),
                        duration: Duration(seconds: 5),
                      );
                    }
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
