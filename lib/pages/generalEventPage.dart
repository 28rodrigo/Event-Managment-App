import 'package:carousel_slider/carousel_slider.dart';
import 'package:eventapp/components/horizontalEventCard.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:flutter/material.dart';

class GeneralEvent extends StatefulWidget {
  List<eventOverview> myEventsList = List<eventOverview>.empty(growable: true);
  List<eventOverview> otherEventsList =
      List<eventOverview>.empty(growable: true);
  GeneralEvent(
      List<eventOverview> _myEventsList, List<eventOverview> _otherEventsList) {
    this.myEventsList = _myEventsList;
    this.otherEventsList = _otherEventsList;
  }

  @override
  State<GeneralEvent> createState() => _GeneralEventState();
}

class _GeneralEventState extends State<GeneralEvent> {
  int _currentIndex = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                'Eventos Agendados',
                style: TextStyle(fontSize: deviceHeight * 0.04),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: deviceHeight * 0.32,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 15),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: widget.otherEventsList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.grey.shade800,
                        shadowColor: Colors.transparent,
                        elevation: 10,
                        shape: Border.all(
                          color: Colors.grey,
                          width: 2,
                        ),
                        child: HorizonalEventCard(
                            card.eventId,
                            card.eventPlace,
                            card.eventType,
                            card.imgUrl,
                            card.name,
                            card.startDate.toDateTime().toString(),
                            false),
                      ),
                    );
                  });
                }).toList(),
              ),
            ],
          ),
          Column(
            children: [
              Text(
                'Meus Eventos',
                style: TextStyle(fontSize: deviceHeight * 0.04),
              ),
              CarouselSlider(
                options: CarouselOptions(
                  height: deviceHeight * 0.32,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 15),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                items: widget.myEventsList.map((card) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      height: MediaQuery.of(context).size.height * 0.32,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        color: Colors.grey.shade800,
                        shadowColor: Colors.transparent,
                        elevation: 10,
                        shape: Border.all(
                            color: Colors.amber.shade200,
                            width: 2,
                            style: BorderStyle.solid),
                        child: HorizonalEventCard(
                            card.eventId,
                            card.eventPlace,
                            card.eventType,
                            card.imgUrl,
                            card.name,
                            card.startDate.toDateTime().toString(),
                            true),
                      ),
                    );
                  });
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
