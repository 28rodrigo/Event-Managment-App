import 'dart:developer';
import 'package:eventapp/components/themes.dart';
import 'package:eventapp/pages/createUserPage.dart';
import 'package:eventapp/pages/eventsPage.dart';
import 'package:eventapp/pages/homePage.dart';
import 'package:eventapp/pages/loginPage.dart';
import 'package:eventapp/pages/userSettingPage.dart';
import 'package:eventapp/proto/gen/eventApp.pbgrpc.dart';
import 'package:eventapp/proto/gen/google/protobuf/timestamp.pb.dart';
import 'package:flutter/material.dart';

import 'common/grpc_commons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Hello',
      themeMode: ThemeMode.dark,
      theme: ThemeClass.lightTheme,
      darkTheme: ThemeClass.darkTheme,
      home: const Login(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String ress = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  Future<void> CreateEvent_() async {
    var client = EventServiceClient(GrpcClientSingleton().client);
    var res = await client.createEvent(createEventInfo(
        ageRestriction: 18,
        description: "ola",
        endDate: Timestamp.fromDateTime(DateTime.now()),
        startDate: Timestamp.fromDateTime(DateTime.now()),
        eventPlace: 1,
        eventType: 1,
        imgUrl: "hello.com",
        latitude: "1234",
        longitude: "4321",
        name: "evento flutter",
        userId: 3));
    log(res.statusMsg);

    setState(() {
      ress = res.statusMsg;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async => CreateEvent_(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
