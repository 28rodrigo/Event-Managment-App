import 'package:eventapp/pages/createEventPage.dart';
import 'package:eventapp/pages/eventPage.dart';
import 'package:eventapp/pages/eventsPage.dart';
import 'package:eventapp/pages/userSettingPage.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/accessService.dart';
import 'package:eventapp/services/eventService.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  String _scanBarcode = 'Unknown';
  String _name = "";
  String _imgUrl = "";
  String _username = "";
  String _token = "";
  var _upcomingEvents = List<eventOverview>.empty(growable: true);
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
    _loadUpcomingEvents();
    print(_name);
  }

  void _loadUpcomingEvents() async {
    var info = infoUserId();
    info.username = _username;
    info.token = _token;
    var response = await EventService().getUpcomingEvents(info);
    if (response.state) {
      setState(() => _upcomingEvents = response.events);
    }
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      _loadInfo();
    });
  }

  Future<void> scanQR() async {
    String barcodeScanRes;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      barcodeScanRes = await FlutterBarcodeScanner.scanBarcode(
          '#ff6666', 'Cancel', true, ScanMode.QR);
      print(barcodeScanRes);
    } on PlatformException {
      barcodeScanRes = 'Failed to get platform version.';
    }
    var userInfo = QRentry();
    userInfo.keycode = barcodeScanRes;
    userInfo.token = _token;
    userInfo.username = _username;

    var response = await AccessService().registerQREvent(userInfo);

    if (response.status) {
      final snackBar = SnackBar(
        content: Text('Registado no evento!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    } else {
      final snackBar = SnackBar(
        content: Text('Erro a registar evento!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    }
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UserSettings(_username)));
              },
              child: Container(
                  width: deviceWidth * 0.1,
                  height: deviceHeight * 0.05,
                  child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 10,
                      backgroundImage: NetworkImage(
                          "https://eitrawmaterials.eu/wp-content/uploads/2016/09/person-icon.png")))),
        ],
        centerTitle: true,
        title: Image.asset(
          "lib/assets/logo.png",
          fit: BoxFit.contain,
          height: deviceHeight * 0.08,
        ),
        elevation: 1,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(
              left: deviceWidth * 0.02,
              right: deviceWidth * 0.02,
              bottom: deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: deviceWidth * 0.7,
                      child: FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text('Olá \n' + _name + '!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: deviceWidth * 0.1)),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(deviceWidth * 0.65, deviceHeight * 0.1)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => CreateEvent()));
                },
                child: Text(
                  'Criar Evento',
                  style: TextStyle(
                      fontSize: deviceHeight * 0.04, color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(deviceWidth * 0.65, deviceHeight * 0.1)),
                onPressed: () {
                  scanQR();
                  //Navigator.push(context,
                  //  MaterialPageRoute(builder: (context) => UserSettings()));
                },
                child: Text(
                  'Ingressar em Evento',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: deviceHeight * 0.04, color: Colors.white),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(deviceWidth * 0.65, deviceHeight * 0.1)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Event()));
                },
                child: Text(
                  'Meus Eventos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: deviceHeight * 0.04, color: Colors.white),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: deviceWidth * 1,
                height: deviceHeight * 0.3,
                child: Scrollbar(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Próximos Eventos",
                          style: TextStyle(fontSize: deviceWidth * 0.05),
                        ),
                        Column(
                          children: _upcomingEvents.map((e) {
                            return InkWell(
                              onTap: () {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => DefaultEvent()));
                              },
                              child: Container(
                                width: deviceWidth * 0.7,
                                height: deviceHeight * 0.1,
                                margin: EdgeInsets.only(top: 10, bottom: 20),
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.grey, width: 2),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(e.startDate.toDateTime().toString(),
                                        style: TextStyle(color: Colors.black)),
                                    Text(
                                      e.name,
                                      style: TextStyle(
                                          fontSize: deviceWidth * 0.06,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
