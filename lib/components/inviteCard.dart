import 'package:flutter/material.dart';

class InviteCard extends StatelessWidget {
  final int local;
  final int type;

  InviteCard(this.local, this.type);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
              left: deviceWidth * 0.02,
              right: deviceWidth * 0.02,
              bottom: deviceWidth * 0.05),
          padding: EdgeInsets.all(deviceWidth * 0.02),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 2),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: deviceWidth * 0.18,
                height: deviceHeight * 0.15,
                child: const CircleAvatar(
                    radius: 10,
                    backgroundImage: NetworkImage(
                        'https://imagens.ebc.com.br/DJ3772pOyeUSotv5t6nI6IyagzU=/1170x700/smart/https://agenciabrasil.ebc.com.br/sites/default/files/thumbnails/image/img20210419125017730.jpg?')),
              ),
              SizedBox(
                width: deviceWidth * 0.02,
              ),
              Container(
                width: deviceWidth * 0.6,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "Congresso Partidário",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: deviceWidth * 0.07,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text(
                        "12/01/2022",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.04,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: deviceHeight * 0.1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    local == 1
                        ? Icon(
                            Icons.computer,
                            color: Colors.orange,
                            size: deviceWidth * 0.08,
                          )
                        : Icon(
                            Icons.house_siding_outlined,
                            color: Colors.amber,
                            size: deviceWidth * 0.08,
                          ),
                    type == 1
                        ? Icon(
                            Icons.lock_open,
                            color: Colors.green,
                            size: deviceWidth * 0.08,
                          )
                        : Icon(
                            Icons.lock,
                            color: Colors.red,
                            size: deviceWidth * 0.08,
                          )
                  ],
                ),
              )
            ],
          ),
        ),
        Container(
          transform: Matrix4.translationValues(0.0, -50.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    fixedSize: Size(deviceWidth * 0.38, deviceHeight * 0.08)),
                onPressed: () {
                  // Respond to button press
                },
                child: Text(
                  'Aceitar',
                  style: TextStyle(fontSize: deviceHeight * 0.035),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    fixedSize: Size(deviceWidth * 0.38, deviceHeight * 0.08)),
                onPressed: () {
                  // Respond to button press
                },
                child: Text(
                  'Rejeitar',
                  style: TextStyle(fontSize: deviceHeight * 0.035),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
