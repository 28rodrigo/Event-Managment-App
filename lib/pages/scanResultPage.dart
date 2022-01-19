import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import 'entrancePage.dart';

class ScannerResult extends StatefulWidget {
  final String serverIP;
  ScannerResult(this.serverIP);

  @override
  _MyScannerResult createState() => _MyScannerResult();
}

class _MyScannerResult extends State<ScannerResult> {
  String _scanBarcode = 'Unknown';
  bool _expandedDescription = false;
  bool _expandedStatisticInfo = false;
  final String lat = "47.3230";
  final String lng = "-142.0212";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: deviceWidth * 1, minHeight: deviceHeight * 0.8),
          child: Container(
            margin: EdgeInsets.only(
                left: deviceWidth * 0.02,
                right: deviceWidth * 0.02,
                bottom: deviceWidth * 0.06),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FittedBox(
                  fit: BoxFit.cover,
                  child: Text(
                    "Congresso partidário",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: deviceWidth * 0.4,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(deviceWidth * 0.04),
                  child: Image.network(
                      'https://imagens.ebc.com.br/DJ3772pOyeUSotv5t6nI6IyagzU=/1170x700/smart/https://agenciabrasil.ebc.com.br/sites/default/files/thumbnails/image/img20210419125017730.jpg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: deviceWidth * 0.42,
                      height: deviceHeight * 0.1,
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.green.shade900,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Público',
                            style: Theme.of(context).textTheme.bodyText1?.merge(
                                TextStyle(fontSize: deviceHeight * 0.038)),
                          ),
                          Icon(
                            Icons.lock_open,
                            color: Colors.white,
                            size: deviceWidth * 0.07,
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: deviceWidth * 0.42,
                      height: deviceHeight * 0.1,
                      margin: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.amber.shade900,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0,
                            spreadRadius: 0.0,
                            offset: Offset(
                                2.0, 2.0), // shadow direction: bottom right
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Presencial',
                            style: Theme.of(context).textTheme.bodyText1?.merge(
                                TextStyle(fontSize: deviceHeight * 0.038)),
                          ),
                          Icon(
                            Icons.house_siding_outlined,
                            color: Colors.white,
                            size: deviceWidth * 0.07,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: deviceWidth * 1, minHeight: deviceHeight * 0.5),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: deviceWidth * 0.03,
                      right: deviceWidth * 0.03,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.green.shade600,
                              fixedSize:
                                  Size(deviceWidth * 0.7, deviceHeight * 0.08)),
                          onPressed: () {
                            // Respond to button press
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Entrance()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Aceder',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    ?.merge(TextStyle(
                                        fontSize: deviceHeight * 0.05)),
                              ),
                              Icon(
                                Icons.lock_open,
                                color: Colors.white,
                                size: deviceHeight * 0.05,
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.blue.shade600,
                                fixedSize: Size(
                                    deviceWidth * 0.7, deviceHeight * 0.08)),
                            onPressed: () async {
                              MapsLauncher.launchCoordinates(
                                  37.4220041, -122.0862462);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  'Navegação',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1
                                      ?.merge(TextStyle(
                                          fontSize: deviceHeight * 0.05)),
                                ),
                                Icon(
                                  Icons.map,
                                  color: Colors.white,
                                  size: deviceHeight * 0.05,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: ExpansionPanelList(
                            animationDuration: Duration(milliseconds: 2000),
                            expandedHeaderPadding: EdgeInsets.only(bottom: 20),
                            children: [
                              ExpansionPanel(
                                  headerBuilder: (context, isExpanded) {
                                    return ListTile(
                                      title: Text(
                                        'Descrição',
                                        style: TextStyle(
                                            fontSize: deviceHeight * 0.04),
                                      ),
                                    );
                                  },
                                  body: Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          'Congresso partidário do partido A para eleicao da assembleia geral.',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.02),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          'Duração',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.03),
                                        ),
                                        subtitle: Text(
                                          '12/01/2022 9:30h - 22/01/2022 19:00h',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.02),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          'Restrição de Idade:',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.03),
                                        ),
                                        subtitle: Text(
                                          '18 anos',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.02),
                                        ),
                                      ),
                                    ],
                                  ),
                                  isExpanded: _expandedDescription,
                                  canTapOnHeader: true),
                            ],
                            dividerColor: Colors.deepOrange,
                            expansionCallback: (panelIndex, isExpanded) {
                              _expandedDescription = !_expandedDescription;

                              setState(() {});
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: ExpansionPanelList(
                            animationDuration: Duration(milliseconds: 2000),
                            expandedHeaderPadding: EdgeInsets.only(bottom: 20),
                            children: [
                              ExpansionPanel(
                                  headerBuilder: (context, isExpanded) {
                                    return ListTile(
                                      title: Text(
                                        'Estatísticas',
                                        style: TextStyle(
                                            fontSize: deviceHeight * 0.04),
                                      ),
                                    );
                                  },
                                  body: Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          'Ocupação atual',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.03),
                                        ),
                                        subtitle: Text(
                                          '12 %',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.02),
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          'Última atualização',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.03),
                                        ),
                                        subtitle: Text(
                                          '12/01/2022 9:30h',
                                          style: TextStyle(
                                              fontSize: deviceHeight * 0.02),
                                        ),
                                      ),
                                    ],
                                  ),
                                  isExpanded: _expandedStatisticInfo,
                                  canTapOnHeader: true),
                            ],
                            dividerColor: Colors.deepOrange,
                            expansionCallback: (panelIndex, isExpanded) {
                              _expandedStatisticInfo = !_expandedStatisticInfo;

                              setState(() {});
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}