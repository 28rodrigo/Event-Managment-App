import 'package:flutter/material.dart';

class UserSettings extends StatelessWidget {
  const UserSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () => {}, icon: Icon(Icons.arrow_back)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/logo.png',
              fit: BoxFit.contain,
              height: deviceHeight * 0.08,
            ),
          ],
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: deviceWidth,
                      child: Text('Rodrigo Pereira',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: FontWeight.bold,
                              fontSize: deviceWidth * 0.1)),
                    ),
                    Container(
                      width: deviceWidth * 0.35,
                      height: deviceHeight * 0.2,
                      child: const CircleAvatar(
                          radius: 10,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWP4oMxtQdoKdCzARMFIG6QjLI-FY7HH4RFA&usqp=CAU')),
                    )
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black12,
                    maximumSize: Size(deviceWidth * 0.8, deviceHeight * 0.2),
                    minimumSize: Size(deviceWidth * 0.55, deviceHeight * 0.1)),
                onPressed: () {
                  // Respond to button press
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.account_box,
                      size: deviceWidth * 0.1,
                    ),
                    Expanded(
                      child: Text(
                        'Alterar dados da conta',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontSize: deviceHeight * 0.04),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.black12,
                    maximumSize: Size(deviceWidth * 0.8, deviceHeight * 0.2),
                    minimumSize: Size(deviceWidth * 0.55, deviceHeight * 0.1)),
                onPressed: () {
                  // Respond to button press
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      size: deviceWidth * 0.1,
                    ),
                    Expanded(
                      child: Text(
                        'Eliminar conta',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.fade,
                        style: TextStyle(fontSize: deviceHeight * 0.04),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    fixedSize: Size(deviceWidth * 0.6, deviceHeight * 0.1)),
                onPressed: () {
                  // Respond to button press
                },
                child: Text(
                  'Logout',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: deviceHeight * 0.04, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}