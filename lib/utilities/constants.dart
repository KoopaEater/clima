import 'package:flutter/material.dart';

const String kApiKey = 'bcd5d3714b7ae41e0a5d5efbc5c21922';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 80.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 50.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Colors.white,
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

final kInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  icon: Icon(
    Icons.location_city,
    color: Colors.white,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.0),
  ),
  hintText: 'Enter city name',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
);