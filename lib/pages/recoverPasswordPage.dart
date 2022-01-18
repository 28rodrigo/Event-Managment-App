import 'package:eventapp/pages/createUserPage.dart';
import 'package:flutter/material.dart';

class RecoverPassword extends StatelessWidget {
  const RecoverPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          "Recuperar Password",
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
                  child: Image.asset("lib/assets/logo.png"),
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(deviceWidth * 0.6, deviceHeight * 0.1)),
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'Recuperar',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.merge(TextStyle(fontSize: deviceHeight * 0.05)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
