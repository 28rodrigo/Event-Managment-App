import 'package:eventapp/pages/eventPage.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  String username = "";
  String imgUrl = "";
  String name = "";
  UserCard(this.username, this.imgUrl, this.name);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      width: deviceWidth * 0.8,
      height: deviceHeight * 0.1,
      margin: EdgeInsets.only(top: 10, bottom: 20),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.network(
            imgUrl,
            width: deviceWidth * 0.15,
            fit: BoxFit.contain,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: deviceWidth * 0.08,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                username,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: deviceWidth * 0.04,
                    fontWeight: FontWeight.normal),
              )
            ],
          )
        ],
      ),
    );
    // return Container(
    //   decoration: BoxDecoration(
    //       border: Border.all(color: Colors.white, width: 1),
    //       borderRadius: BorderRadius.circular(10)),
    //   height: deviceHeight * 0.1,
    //   width: deviceWidth * 0.8,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceAround,
    //     children: [
    //       Image.network(
    //         'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWP4oMxtQdoKdCzARMFIG6QjLI-FY7HH4RFA&usqp=CAU',
    //         width: deviceWidth * 0.15,
    //         fit: BoxFit.contain,
    //       ),
    //       Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(
    //             "Rodrigo Pereira",
    //             style: TextStyle(
    //                 fontSize: deviceWidth * 0.08, fontWeight: FontWeight.bold),
    //           ),
    //           Text(
    //             "@28rodrigo",
    //             style: TextStyle(
    //                 fontSize: deviceWidth * 0.04,
    //                 fontWeight: FontWeight.normal),
    //           )
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
