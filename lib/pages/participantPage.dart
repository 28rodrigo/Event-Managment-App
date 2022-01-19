import 'package:eventapp/components/userCard.dart';
import 'package:eventapp/pages/createUserPage.dart';
import 'package:flutter/material.dart';

class Participants extends StatelessWidget {
  const Participants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          "Participantes",
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
                UserCard(),
                UserCard(),
                UserCard(),
                UserCard(),
                UserCard(),
                UserCard(),
                UserCard(),
                UserCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
