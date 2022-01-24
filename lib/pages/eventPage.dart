import 'package:eventapp/pages/entrancePage.dart';
import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/services/accessService.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DefaultEvent extends StatefulWidget {
  eventUserInfo _info = eventUserInfo();
  bool registed;
  DefaultEvent(this._info, this.registed);

  @override
  State<DefaultEvent> createState() => _DefaultEventState();
}

class _DefaultEventState extends State<DefaultEvent> {
  bool _expandedDescription = false;
  bool _expandedStatisticInfo = false;
  String _username = "";
  String _token = "";
  void _loadInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var username = prefs.getString("username");
    var token = prefs.getString("token");

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
  }

  void _register() async {
    publicRegisterInfo info = publicRegisterInfo();
    info.eventId = widget._info.eventId;
    info.token = _token;
    info.username = _username;

    var response = await AccessService().registerPublicEven(info);
    if (response.status) {
      final snackBar = SnackBar(
        content: Text('Registado com sucesso!'),
        duration: Duration(seconds: 5),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Navigator.pushNamedAndRemoveUntil(
          context, '/home', ModalRoute.withName('/home'));
    }
  }

  void _getAccess() async {
    var userInfo = entryParam();
    userInfo.eventId = widget._info.eventId;
    userInfo.token = _token;
    userInfo.username = _username;
    var response = await AccessService().getEntry(userInfo);

    if (response.status) {
      Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  Entrance(response.keyCode, widget._info.name)));
    } else {
      final snackBar = SnackBar(
        content: Text('Erro a aceder evento!'),
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
                    widget._info.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: deviceWidth * 0.4,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(deviceWidth * 0.04),
                  child: Image.network(widget._info.imgUrl),
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
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Colors.green.shade600,
                                fixedSize: Size(
                                    deviceWidth * 0.55, deviceHeight * 0.08)),
                            onPressed: () async {
                              if (widget.registed)
                                _getAccess();
                              else
                                _register();
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  widget.registed ? 'Aceder' : 'Registar',
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
                        ),
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.blue.shade600,
                              minimumSize:
                                  Size(deviceWidth * 0.7, deviceHeight * 0.08),
                              maximumSize:
                                  Size(deviceWidth * 0.7, deviceHeight * 0.09),
                            ),
                            onPressed: () async {
                              MapsLauncher.launchCoordinates(
                                  double.parse(widget._info.latitude),
                                  double.parse(widget._info.longitude));
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
                                          fontSize: deviceHeight * 0.04)),
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
                        ExpansionPanelList(
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
                                        widget._info.description,
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
                                        widget._info.startDate
                                                .toDateTime()
                                                .toString()
                                                .split('.')[0] +
                                            ' - ' +
                                            widget._info.endDate
                                                .toDateTime()
                                                .toString()
                                                .split('.')[0],
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
                                        widget._info.ageRestriction.toString() +
                                            ' anos',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            widget._info.eventType == 1
                                ? Container(
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
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Público',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.merge(TextStyle(
                                                  fontSize:
                                                      deviceHeight * 0.038)),
                                        ),
                                        Icon(
                                          Icons.lock_open,
                                          color: Colors.white,
                                          size: deviceWidth * 0.07,
                                        )
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: deviceWidth * 0.42,
                                    height: deviceHeight * 0.1,
                                    margin: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.red.shade900,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 2.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Privado',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.merge(TextStyle(
                                                  fontSize:
                                                      deviceHeight * 0.038)),
                                        ),
                                        Icon(
                                          Icons.lock_outline,
                                          color: Colors.white,
                                          size: deviceWidth * 0.07,
                                        )
                                      ],
                                    ),
                                  ),
                            widget._info.eventPlace == 1
                                ? Container(
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
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Presencial',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.merge(TextStyle(
                                                  fontSize:
                                                      deviceHeight * 0.038)),
                                        ),
                                        Icon(
                                          Icons.house_siding_outlined,
                                          color: Colors.white,
                                          size: deviceWidth * 0.07,
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: deviceWidth * 0.42,
                                    height: deviceHeight * 0.1,
                                    margin: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      color: Colors.yellow.shade900,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black,
                                          blurRadius: 2.0,
                                          spreadRadius: 0.0,
                                          offset: Offset(2.0,
                                              2.0), // shadow direction: bottom right
                                        )
                                      ],
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Online',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1
                                              ?.merge(TextStyle(
                                                  fontSize:
                                                      deviceHeight * 0.038)),
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
                        ExpansionPanelList(
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
                                        'Ocupação',
                                        style: TextStyle(
                                            fontSize: deviceHeight * 0.03),
                                      ),
                                      subtitle: Text(
                                        widget._info.ocupationPercentage
                                                .toString() +
                                            ' %',
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
