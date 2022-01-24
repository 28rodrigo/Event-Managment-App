import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSettings extends StatefulWidget {
  String username;
  UserSettings(this.username);

  @override
  State<UserSettings> createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'lib/assets/logo.png',
          fit: BoxFit.contain,
          height: deviceHeight * 0.08,
        ),
        elevation: 1,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
              left: deviceWidth * 0.02,
              right: deviceWidth * 0.02,
              bottom: deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: deviceWidth,
                      child: Text(widget.username,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * 0.15)),
                    ),
                    Container(
                      width: deviceWidth * 0.35,
                      height: deviceHeight * 0.2,
                      child: const CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                              "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png")),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    fixedSize: Size(deviceWidth * 0.6, deviceHeight * 0.1)),
                onPressed: () async {
                  // Respond to button press
                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  prefs.setString("username", "");
                  prefs.setString("token", "");
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', ModalRoute.withName('/'));
                },
                child: Text(
                  'Logout',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: deviceHeight * 0.04, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
