import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/proto/gen/eventApp.pbjson.dart';
import 'package:eventapp/services/accessService.dart';
import 'package:eventapp/services/eventService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InviteCard extends StatefulWidget {
  final int local;
  final int type;
  final int idEvento;
  final String imgUrl;
  final String name;
  final String date;

  InviteCard(
      this.idEvento, this.local, this.type, this.imgUrl, this.name, this.date);

  @override
  State<InviteCard> createState() => _InviteCardState();
}

class _InviteCardState extends State<InviteCard> {
  String _name = "";
  String _imgUrl = "";
  String _username = "";
  String _token = "";
  List<eventOverview> _info = List<eventOverview>.empty();
  var usernameController = TextEditingController(text: "");
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
    print(_name);
  }

  void _sendInviteResult(bool value) async {
    var info = publicInviteInfo();
    info.username = _username;
    info.token = _token;
    info.accept = value;
    info.eventId = widget.idEvento;
    var response = await AccessService().registerInviteEvent(info);
    if (response.status) {
      final snackBar = SnackBar(
        content: Text('Resposta adicionada!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    } else {
      final snackBar = SnackBar(
        content: Text('Erro a registar resposta!'),
        duration: Duration(seconds: 5),
      );
      print(response.statusMsg);
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
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
    return Column(
      children: [
        Container(
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
                width: deviceWidth * 0.18,
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
                        widget.date,
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
        Container(
          transform: Matrix4.translationValues(0.0, -50.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    fixedSize: Size(deviceWidth * 0.38, deviceHeight * 0.08)),
                onPressed: () {
                  _sendInviteResult(true);
                },
                child: Text(
                  'Aceitar',
                  style: TextStyle(fontSize: deviceHeight * 0.035),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    fixedSize: Size(deviceWidth * 0.38, deviceHeight * 0.08)),
                onPressed: () {
                  _sendInviteResult(false);
                },
                child: Text(
                  'Rejeitar',
                  style: TextStyle(fontSize: deviceHeight * 0.035),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
