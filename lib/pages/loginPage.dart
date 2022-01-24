import 'package:eventapp/pages/createUserPage.dart';
import 'package:eventapp/pages/homePage.dart';
import 'package:eventapp/pages/recoverPasswordPage.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/userService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var usernameController = TextEditingController(text: "");
  var passwordController = TextEditingController(text: "");
//create landing//////////////////////////////////////////////////////////////
  void _handleSubmitted() async {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      final snackBar = SnackBar(
        content: Text('Necessário preencher dados!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      return;
    }
    var newuser = loginInfo();
    newuser.username = usernameController.text;
    newuser.password = passwordController.text;

    var response = await UserService().login(newuser);

    if (response.state) {
      final snackBar = SnackBar(
        content: Text('Login com sucesso!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(
        "username",
        usernameController.text,
      );
      prefs.setString("name", usernameController.text);

      prefs.setString("imgUrl", response.imgurl);
      prefs.setString("token", response.token);
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    } else {
      final snackBar = SnackBar(
        content: Text('Erro a fazer login!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

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
                  controller: usernameController,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: 'Username',
                    // errorText: 'Username incorreto!',
                    border: const OutlineInputBorder(),
                  ),
                ),
                TextFormField(
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(deviceWidth * 0.6, deviceHeight * 0.1)),
                  onPressed: () {
                    _handleSubmitted();
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MainHome()));
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
