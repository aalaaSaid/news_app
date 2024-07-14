import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle getTitleStyle({Color?color , double? frontSize,FontWeight?frontWeight}){
  return TextStyle(
    color: color??Colors.black,
    fontSize: frontSize??20,
    fontWeight: frontWeight??FontWeight.bold,
  );
}

TextStyle getBodyStyle({Color?color , double? frontSize,FontWeight?frontWeight}){
  return TextStyle(
    color: color??Colors.black,
    fontSize: frontSize??16,
    fontWeight: frontWeight??FontWeight.normal,
  );
}

