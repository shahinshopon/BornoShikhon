import 'package:bornomalashikhon/UI/allcolors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget CustomButton(String centertext, Function onPressed, double size,
    BorderRadiusGeometry radius) {
  return Container(
      decoration: BoxDecoration(color: Colors.red),
      child: Material(
          borderRadius: radius,
          color: ColorData.progresscolor,
          child: InkWell(
            onTap: onPressed,
            splashColor: Colors.white,
            child: Center(
              child: Text(
                centertext,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: size),
              ),
            ),
          )));
}
