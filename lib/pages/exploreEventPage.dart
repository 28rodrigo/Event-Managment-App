import 'package:eventapp/components/eventCard.dart';
import 'package:flutter/material.dart';

class ExploreEvent extends StatelessWidget {
  final Color color;

  ExploreEvent(this.color);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        color: color,
        child: Column(
          children: [
            EventCard(1, 2),
            EventCard(2, 1),
            EventCard(1, 1),
            EventCard(2, 2),
            EventCard(1, 1)
          ],
        ),
      ),
    );
  }
}
