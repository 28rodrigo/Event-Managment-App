import 'package:eventapp/components/eventCard.dart';
import 'package:eventapp/components/inviteCard.dart';
import 'package:flutter/material.dart';

class InviteEvent extends StatelessWidget {
  InviteEvent();

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            InviteCard(2, 2),
            InviteCard(2, 2),
            InviteCard(2, 2),
          ],
        ),
      ),
    );
  }
}
