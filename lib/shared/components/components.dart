import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget circleButton({
  required Icons icon,
  double size = 16.0,
  required Function function,
}) => IconButton(
  onPressed: (){},
  icon: CircleAvatar(
    radius: 15.0,
    backgroundColor: Colors.grey[300]
    ,
    child: Icon(
      icon as IconData?,
      color: Colors.black,
      size: size,

    ),
  ),
);