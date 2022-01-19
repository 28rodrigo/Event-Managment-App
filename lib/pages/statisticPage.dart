import 'dart:math';

import 'package:eventapp/components/userCard.dart';
import 'package:eventapp/pages/createUserPage.dart';
import 'package:flutter/material.dart';
import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';

class Statistics extends StatefulWidget {
  const Statistics({Key? key}) : super(key: key);

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
  /// Create one series with sample hard coded data.
  final List<Feature> features = [
    Feature(
      title: "Percentagem de Ocupação",
      color: Colors.blue,
      data: [0.3, 0.6, 0.8, 0.9, 1, 1.2],
    ),
    Feature(
      title: "Participantes",
      color: Colors.purple,
      data: [1, 0.8, 0.6, 0.7, 0.3, 0.1],
    ),
    Feature(
      title: "Ativos",
      color: Colors.orange,
      data: [0.4, 0.2, 0.9, 0.5, 0.6, 0.4],
    ),
    Feature(
      title: "Convites",
      color: Colors.red,
      data: [0.5, 0.2, 0, 0.3, 1, 1.3],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        centerTitle: true,
        title: Text(
          "Estatisticas",
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
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 64.0),
                      child: Text(
                        "Estatisticas do Evento",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                    LineGraph(
                      features: features,
                      size: Size(420, 450),
                      labelX: [
                        'Day 1',
                        'Day 2',
                        'Day 3',
                        'Day 4',
                        'Day 5',
                        'Day 6'
                      ],
                      labelY: ['25%', '45%', '65%', '75%', '85%', '100%'],
                      showDescription: true,
                      graphColor: Colors.white,
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
