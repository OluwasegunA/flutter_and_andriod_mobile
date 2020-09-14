import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.attach_money),
                onPressed: () { Scaffold.of(context).openDrawer(); },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                hoverColor: Color(255),
              );
            },
          ),
          title: Text('Call me ****!'),
          backgroundColor: Color.fromRGBO(40, 46, 56, 0.75),
        ),
        backgroundColor: Color.fromRGBO(151, 182, 119, 0.5),
        body: Center(
          child: Image(
              image: AssetImage('images/diamond.png'),
          ),
        ),
      ),
    ),
  );
}
