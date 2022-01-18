import 'package:eventapp/pages/exploreEventPage.dart';
import 'package:eventapp/pages/generalEventPage.dart';
import 'package:eventapp/pages/invitesPage.dart';
import 'package:flutter/material.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  _EventState createState() => _EventState();
}

class _EventState extends State<Event> {
  int _currentIndex = 1;
  final List _children = [
    ExploreEvent(Colors.transparent),
    GeneralEvent(),
    InviteEvent()
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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
