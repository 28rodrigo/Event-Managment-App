import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:eventapp/components/horizontalEventCard.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Entrance extends StatefulWidget {
  String keyCode;
  String eventName;

  Entrance(this.keyCode, this.eventName);
  @override
  State<Entrance> createState() => _Entrance();
}

class _Entrance extends State<Entrance> {
  _Entrance() {
    startTimer();
  }
  late Timer _timer;
  int _start = 60 * 10;
  int _currentIndex = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
      ),
      body: Center(
        child: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              widget.eventName,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: deviceWidth * 0.2, fontWeight: FontWeight.bold),
            ),
            QrImage(
              backgroundColor: Colors.white,
              data: widget.keyCode,
              version: QrVersions.auto,
              size: deviceWidth * 0.7,
            ),
            Column(
              children: [
                Text(
                  "Tempo restante",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: deviceWidth * 0.1, fontWeight: FontWeight.bold),
                ),
                Text(
                  "$_start",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: deviceWidth * 0.1,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
