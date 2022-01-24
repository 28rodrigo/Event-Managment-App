import 'package:eventapp/components/eventCard.dart';
import 'package:eventapp/components/inviteCard.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/eventService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InviteEvent extends StatefulWidget {
  InviteEvent();

  @override
  State<InviteEvent> createState() => _InviteEventState();
}

class _InviteEventState extends State<InviteEvent> {
  String _name = "";
  String _imgUrl = "";
  String _username = "";
  String _token = "";
  List<eventOverview> _info = List<eventOverview>.empty();
  void _loadInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("token");
    var username = prefs.getString("username");

    if (token != null) {
      _token = token;
    } else {
      _token = "";
    }
    if (username != null) {
      _username = username;
    } else {
      _username = "";
    }
    _loadAdminInfo();
    print(_name);
  }

  void _loadAdminInfo() async {
    var info = infoUserId();
    info.username = _username;
    info.token = _token;
    var response = await EventService().getInviteEvents(info);
    if (response.state) {
      setState(() => _info = response.events);
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _loadInfo();
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(top: 20),
        child: Column(
            children: _info
                .map((e) => InviteCard(
                    e.eventId,
                    e.eventPlace,
                    e.eventType,
                    e.imgUrl,
                    e.name,
                    e.startDate.toDateTime().toString().split(".")[0]))
                .toList()),
      ),
    );
  }
}
