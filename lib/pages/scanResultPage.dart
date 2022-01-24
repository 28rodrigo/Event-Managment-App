import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import 'entrancePage.dart';

class ScannerResult extends StatefulWidget {
  final String result;
  ScannerResult(this.result);

  @override
  _MyScannerResult createState() => _MyScannerResult();
}

class _MyScannerResult extends State<ScannerResult> {
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
              child: Text(widget.result)),
        ),
      ),
    );
  }
}
