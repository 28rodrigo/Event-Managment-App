import 'package:flutter/material.dart';

class MainHome extends StatelessWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () => {}, icon: Icon(Icons.settings))],
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
                  // Respond to button press
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
                  // Respond to button press
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
                  // Respond to button press
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
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    Container(
                      width: deviceWidth * 0.7,
                      height: deviceHeight * 0.1,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey, width: 2),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
