import 'package:flutter/material.dart';

final kHintTextStyle = TextStyle(
  color: Color.fromARGB(137, 255, 254, 254),
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Color.fromARGB(255, 60, 57, 57),
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color.fromARGB(255, 251, 248, 248),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
