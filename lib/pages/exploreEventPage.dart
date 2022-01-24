import 'package:eventapp/components/eventCard.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:flutter/material.dart';

class ExploreEvent extends StatefulWidget {
  final Color color;
  List<eventOverview> explorerEventsList =
      List<eventOverview>.empty(growable: true);

  ExploreEvent(this.color, this.explorerEventsList);

  @override
  State<ExploreEvent> createState() => _ExploreEventState();
}

class _ExploreEventState extends State<ExploreEvent> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        color: widget.color,
        child: Column(
            children: widget.explorerEventsList.map((card) {
          return EventCard(card.eventId, card.eventPlace, card.eventType,
              card.imgUrl, card.name, card.startDate.toDateTime().toString());
        }).toList()),
      ),
    );
  }
}
