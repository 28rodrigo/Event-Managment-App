import 'package:eventapp/pages/eventPage.dart';
import 'package:flutter/material.dart';

class HorizonalEventCard extends StatelessWidget {
  final int local;
  final int type;

  HorizonalEventCard(this.local, this.type);
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DefaultEvent()));
      },
      child: Container(
        margin: EdgeInsets.only(
            left: deviceWidth * 0.02,
            right: deviceWidth * 0.02,
            bottom: deviceWidth * 0.05),
        padding: EdgeInsets.all(deviceWidth * 0.02),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Container(
                height: deviceHeight * 0.16,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black)),
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: Image.network(
                      'https://imagens.ebc.com.br/DJ3772pOyeUSotv5t6nI6IyagzU=/1170x700/smart/https://agenciabrasil.ebc.com.br/sites/default/files/thumbnails/image/img20210419125017730.jpg?'),
                ),
              ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        fit: BoxFit.fitWidth,
                        child: Text(
                          "12/01/2022",
                          style: TextStyle(
                              fontSize: deviceWidth * 0.04,
                              fontWeight: FontWeight.w300),
                        ),
                      ),
                      Row(
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
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
