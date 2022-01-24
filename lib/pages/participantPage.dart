import 'package:eventapp/components/userCard.dart';
import 'package:eventapp/pages/createUserPage.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/accessService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Participants extends StatefulWidget {
  List<user> _users = List<user>.empty(growable: true);
  int eventId;
  Participants(this._users, this.eventId);

  @override
  State<Participants> createState() => _ParticipantsState();
}

class _ParticipantsState extends State<Participants> {
  var usernameController = TextEditingController(text: "");
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
  }

  void _addUser() async {
    var info = entryAddUser();
    info.username = _username;
    info.guestUsername = usernameController.text;
    info.eventId = widget.eventId;
    var response = await AccessService().addUserToEvent(info);
    if (response.status) {
      final snackBar = SnackBar(
        content: Text('Utilizador adicionado!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    } else {
      print(response.statusMsg);
      final snackBar = SnackBar(
        content: Text('Erro a adicionar utilizador!'),
        duration: Duration(seconds: 5),
      );
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
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return new AlertDialog(
                      title: const Text('Adicionar utilizador'),
                      content: new Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(
                                top: deviceHeight * 0.03,
                                bottom: deviceHeight * 0.03),
                            child: TextFormField(
                              controller: usernameController,

                              // ignore: prefer_const_constructors
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                labelText: 'Username',
                                // errorText: 'Username incorreto!',
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            _addUser();
                            Navigator.of(context).pop();
                          },
                          child: const Text('Adicionar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  });
            },
          )
        ],
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
              children: widget._users.map((e) {
                return UserCard(
                    e.username,
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWP4oMxtQdoKdCzARMFIG6QjLI-FY7HH4RFA&usqp=CAU',
                    e.name);
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
