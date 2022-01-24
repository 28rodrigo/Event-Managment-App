import 'dart:io';

import 'package:eventapp/proto/gen/eventApp.pb.dart';
import 'package:eventapp/proto/gen/google/protobuf/timestamp.pb.dart';
import 'package:eventapp/services/eventService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_dropdown/flutter_dropdown.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CreateEvent extends StatefulWidget {
  const CreateEvent({Key? key}) : super(key: key);

  @override
  State<CreateEvent> createState() => _CreateEventState();
}

class _CreateEventState extends State<CreateEvent> {
  XFile? _image;
  String startDate = "";
  String endDate = "";
  String _username = "";
  String _token = "";
  var nameController = TextEditingController();
  var descriptionController = TextEditingController();
  var latitudeController = TextEditingController();
  var longitudeController = TextEditingController();
  var ageController = TextEditingController();
  int eventLocal = 1;
  int eventType = 1;
  void _loadInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var name = prefs.getString("name");
    var imgUrl = prefs.getString("imgUrl");
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

  _imgFromGallery() async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: 50);
    setState(() {
      _image = image;
    });
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
    bool _expandedLocation = false;
    int selectedValue = 1;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text(
          "Novo evento",
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
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    controller: nameController,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.perm_device_information),
                      labelText: 'Nome',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    maxLines: 10,
                    controller: descriptionController,
                    keyboardType: TextInputType.emailAddress,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.description),
                      labelText: 'Descrição',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Container(
                        width: deviceWidth * 0.8,
                        child: Text(
                          "Localização",
                          style: TextStyle(fontSize: deviceHeight * 0.03),
                        )),
                    Container(
                      margin: EdgeInsets.only(
                          top: deviceHeight * 0.03,
                          bottom: deviceHeight * 0.03),
                      child: TextFormField(
                        controller: latitudeController,
                        keyboardType: TextInputType.number,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          icon: Icon(Icons.location_pin),
                          labelText: 'Latitude',
                          // errorText: 'Username incorreto!',
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          top: deviceHeight * 0.03,
                          bottom: deviceHeight * 0.03),
                      child: TextFormField(
                        controller: longitudeController,
                        keyboardType: TextInputType.number,
                        // ignore: prefer_const_constructors
                        decoration: InputDecoration(
                          icon: Icon(Icons.location_pin),
                          labelText: 'Longitude',
                          // errorText: 'Username incorreto!',
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropDown(
                      items: ["Publico", "Privado"],
                      hint: Text("Tipo"),
                      icon: Icon(
                        Icons.expand_more,
                        color: Colors.blue,
                      ),
                      onChanged: (s) {
                        var string = s.toString();
                        if (string == "Publico")
                          setState(() {
                            eventType = 1;
                          });
                        else
                          setState(() {
                            eventType = 2;
                          });
                      },
                    ),
                    DropDown(
                      items: ["Local", "Online"],
                      hint: Text("Local"),
                      icon: Icon(
                        Icons.expand_more,
                        color: Colors.blue,
                      ),
                      onChanged: (s) {
                        var string = s.toString();
                        if (string == "Local")
                          setState(() {
                            eventLocal = 1;
                          });
                        else
                          setState(() {
                            eventLocal = 2;
                          });
                      },
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: deviceHeight * 0.03, bottom: deviceHeight * 0.03),
                  child: TextFormField(
                    controller: ageController,
                    keyboardType: TextInputType.number,
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      icon: Icon(Icons.cake),
                      labelText: 'Restrinção de Idade',
                      // errorText: 'Username incorreto!',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                CircleAvatar(
                  radius: 55,
                  backgroundColor: Color(0xffFDCF09),
                  child: _image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            File(_image!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.fitHeight,
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(50)),
                          width: 100,
                          height: 100,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.grey[800],
                          ),
                        ),
                ),
                TextButton(
                    onPressed: () {
                      _imgFromGallery();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Escolher imagem',
                          style: TextStyle(fontSize: deviceWidth * 0.05),
                        ),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      DatePicker.showDateTimePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2018, 3, 5),
                          maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        print('confirm $date');

                        setState(() {
                          print(startDate);
                          startDate = date.toString();
                        });
                      }, currentTime: DateTime.now(), locale: LocaleType.pt);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Data de inicio',
                          style: TextStyle(fontSize: deviceWidth * 0.05),
                        ),
                        Text(
                          startDate,
                          style: TextStyle(
                              fontSize: deviceWidth * 0.05,
                              color: Colors.white),
                        ),
                      ],
                    )),
                TextButton(
                    onPressed: () {
                      DatePicker.showDateTimePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2018, 3, 5),
                          maxTime: DateTime(2019, 6, 7), onChanged: (date) {
                        print('change $date');
                      }, onConfirm: (date) {
                        print('confirm $date');

                        setState(() {
                          print(endDate);
                          endDate = date.toString();
                        });
                      }, currentTime: DateTime.now(), locale: LocaleType.pt);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Data de fim',
                          style: TextStyle(fontSize: deviceWidth * 0.05),
                        ),
                        Text(
                          endDate,
                          style: TextStyle(
                              fontSize: deviceWidth * 0.05,
                              color: Colors.white),
                        ),
                      ],
                    )),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(deviceWidth * 0.6, deviceHeight * 0.08)),
                  onPressed: () async {
                    var request = new createEventInfo(
                      ageRestriction: int.parse(ageController.text),
                      description: descriptionController.text,
                      endDate: Timestamp.fromDateTime(DateTime.parse(endDate)),
                      startDate:
                          Timestamp.fromDateTime(DateTime.parse(startDate)),
                      eventPlace: eventLocal,
                      eventType: eventType,
                      imgUrl:
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzUdblYP0MWRgko8mx7a5a8fLM-7a8_F0O1Q&usqp=CAU",
                      latitude: latitudeController.text,
                      longitude: longitudeController.text,
                      name: nameController.text,
                    );
                    request.username = _username;
                    request.token = _token;

                    var response = await EventService().createEvent(request);
                    if (response.state) {
                      final snackBar = SnackBar(
                        content: Text('Evento criado com sucesso!'),
                        duration: Duration(seconds: 5),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', ModalRoute.withName('/home'));
                    }
                  },
                  child: Text(
                    'Registar',
                    style: TextStyle(
                        fontSize: deviceHeight * 0.05, color: Colors.white),
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
