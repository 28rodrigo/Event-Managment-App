import 'package:eventapp/pages/eventPage.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/eventService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EventCard extends StatefulWidget {
  final int local;
  final int type;
  final String imgUrl;
  final String name;
  final String date;
  final int idEvento;
  EventCard(
      this.idEvento, this.local, this.type, this.imgUrl, this.name, this.date);

  @override
  State<EventCard> createState() => _EventCardState();
}

class _EventCardState extends State<EventCard> {
  String _name = "";
  String _imgUrl = "";
  String _username = "";
  String _token = "";
  eventUserInfo _info = eventUserInfo();
  void _loadInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString("token");

    if (token != null) {
      _token = token;
    } else {
      _token = "";
    }
    _loadAdminInfo();
    print(_name);
  }

  void _loadAdminInfo() async {
    var info = infoId();
    info.idEvento = widget.idEvento;
    info.token = _token;
    var response = await EventService().getUserEventInfo(info);
    if (response.state) {
      setState(() => _info = response);
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
    print(widget.local);
    print(widget.type);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DefaultEvent(_info, false)));
      },
      child: Container(
        margin: EdgeInsets.only(
            left: deviceWidth * 0.02,
            right: deviceWidth * 0.02,
            bottom: deviceWidth * 0.05),
        padding: EdgeInsets.all(deviceWidth * 0.02),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 2),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: deviceWidth * 0.20,
              height: deviceHeight * 0.15,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(widget.imgUrl),
              ),
            ),
            SizedBox(
              width: deviceWidth * 0.02,
            ),
            Container(
              width: deviceWidth * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      widget.name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: deviceWidth * 0.07,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.fitWidth,
                    child: Text(
                      widget.date.split('.')[0],
                      style: TextStyle(
                          fontSize: deviceWidth * 0.04,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: deviceHeight * 0.1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  widget.local == 2
                      ? Icon(
                          Icons.computer,
                          color: Colors.orange,
                          size: deviceWidth * 0.08,
                        )
                      : Icon(
                          Icons.house_siding_outlined,
                          color: Colors.amber,
                          size: deviceWidth * 0.08,
                        ),
                  widget.type == 1
                      ? Icon(
                          Icons.lock_open,
                          color: Colors.green,
                          size: deviceWidth * 0.08,
                        )
                      : Icon(
                          Icons.lock,
                          color: Colors.red,
                          size: deviceWidth * 0.08,
                        )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
