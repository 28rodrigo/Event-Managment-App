import 'package:eventapp/pages/adminEventPage.dart';
import 'package:eventapp/pages/eventPage.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/eventService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HorizonalEventCard extends StatefulWidget {
  final int local;
  final int type;
  final int idEvento;
  final String imgUrl;
  final String name;
  final String date;

  HorizonalEventCard(
      this.idEvento, this.local, this.type, this.imgUrl, this.name, this.date);

  @override
  State<HorizonalEventCard> createState() => _HorizonalEventCardState();
}

class _HorizonalEventCardState extends State<HorizonalEventCard> {
  String _name = "";
  String _imgUrl = "";
  String _username = "";
  String _token = "";
  eventAdminInfo _info = eventAdminInfo();
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
    var response = await EventService().getAdminEventInfo(info);
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
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AdminEvent(_info)));
      },
      child: Container(
        margin: EdgeInsets.only(
            left: deviceWidth * 0.02,
            right: deviceWidth * 0.02,
            bottom: deviceWidth * 0.05),
        padding: EdgeInsets.all(deviceWidth * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: deviceHeight * 0.16,
                width: deviceWidth * 0.6,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.network(widget.imgUrl),
                ),
              ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          widget.date.split('.')[0],
                          style: TextStyle(
                              fontSize: deviceWidth * 0.04,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Row(
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
