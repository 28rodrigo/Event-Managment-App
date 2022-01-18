import 'package:eventapp/pages/createEventPage.dart';
import 'package:eventapp/pages/eventPage.dart';
import 'package:eventapp/pages/eventsPage.dart';
import 'package:eventapp/pages/userSettingPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  String _scanBarcode = 'Unknown';
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

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.

    setState(() {
      _scanBarcode = barcodeScanRes;
    });
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserSettings()))
                  },
              icon: Icon(Icons.settings))
        ],
        centerTitle: true,
        title: Image.asset(
          'lib/assets/logo.png',
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
                      width: deviceWidth * 0.4,
                      child: Text('Olá Rodrigo !',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * 0.1)),
                    ),
                    Container(
                      width: deviceWidth * 0.35,
                      height: deviceHeight * 0.2,
                      child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 10,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWP4oMxtQdoKdCzARMFIG6QjLI-FY7HH4RFA&usqp=CAU')),
                    )
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
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DefaultEvent()));
                },
                child: Container(
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
                          Container(
                            width: deviceWidth * 0.7,
                            height: deviceHeight * 0.1,
                            margin: EdgeInsets.only(top: 10, bottom: 20),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 2),
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
                                Text("29 de Junho 2022, 23:30",
                                    style: TextStyle(color: Colors.black)),
                                Text(
                                  "Congresso Partido",
                                  style: TextStyle(
                                      fontSize: deviceWidth * 0.06,
                                      color: Colors.black),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DefaultEvent()));
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
                                  Text("29 de Junho 2022, 23:30",
                                      style: TextStyle(color: Colors.black)),
                                  Text(
                                    "Congresso Partido",
                                    style: TextStyle(
                                        fontSize: deviceWidth * 0.06,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DefaultEvent()));
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
                                  Text(
                                    "29 de Junho 2022, 23:30",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  Text(
                                    "Congresso Partido",
                                    style: TextStyle(
                                        fontSize: deviceWidth * 0.06,
                                        color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
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
