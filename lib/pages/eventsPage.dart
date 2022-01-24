import 'package:eventapp/pages/exploreEventPage.dart';
import 'package:eventapp/pages/generalEventPage.dart';
import 'package:eventapp/pages/invitesPage.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/eventService.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  int _currentIndex = 1;
  String _name = "";
  String _imgUrl = "";
  String _username = "";
  String _token = "";
  var _myEvents = List<eventOverview>.empty(growable: true);
  var _otherEvents = List<eventOverview>.empty(growable: true);
  var _explorerEvents = List<eventOverview>.empty(growable: true);

  void _loadInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var name = prefs.getString("name");
    var imgUrl = prefs.getString("imgUrl");
    var username = prefs.getString("username");
    var token = prefs.getString("token");
    if (name != null) {
      _name = name;
    } else {
      _name = "";
    }
    if (imgUrl != null) {
      _imgUrl = imgUrl.split(" ")[0];
    } else {
      _imgUrl = "";
    }
    if (username != null) {
      _username = username;
    } else {
      _username = "";
    }
    if (token != null) {
      _token = token;
    } else {
      _token = "";
    }
    _loadMyEvents();
    _loadOtherEvents();
    _loadExplorerEvents();
  }

  void _loadMyEvents() async {
    var info = infoUserId();
    info.username = _username;
    info.token = _token;
    var response = await EventService().getMyEvents(info);
    var response1 = await EventService().getOtherEvents(info);
    if (response.state) {
      setState(() => _myEvents = response.events);
    }
  }

  void _loadOtherEvents() async {
    var info = infoUserId();
    info.username = _username;
    info.token = _token;
    var response = await EventService().getOtherEvents(info);
    if (response.state) {
      setState(() => _otherEvents = response.events);
    }
  }

  void _loadExplorerEvents() async {
    var info = infoUserId();
    info.username = _username;
    info.token = _token;
    var response = await EventService().getExplorerEvents(info);
    if (response.state) {
      setState(() => _explorerEvents = response.events);
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _loadInfo();
    });
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List _children = [
      ExploreEvent(Colors.transparent, _explorerEvents),
      GeneralEvent(_myEvents, _otherEvents),
      InviteEvent()
    ];
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
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        iconSize: deviceHeight * 0.04,
        selectedFontSize: deviceWidth * 0.03,
        unselectedFontSize: deviceWidth * 0.025,
        currentIndex:
            _currentIndex, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.explore),
            title: new Text('Explorar'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.event),
            title: new Text('Eventos'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), title: Text('Convites'))
        ],
      ),
    );
  }
}
