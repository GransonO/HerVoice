import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Utilities {

  componentWidth(value, context){
    return MediaQuery.of(context).size.width/100 * value;
  }

  componentHeight(value, context){
    return MediaQuery.of(context).size.height/100 * value;
  }

  circularLogo(context){
    return Container(
        child: Align(
          alignment: Alignment.topLeft,
          child: Container(
            height: Utilities().componentWidth(30, context),
            width: Utilities().componentWidth(30, context),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                border: Border.all(color: Colors.deepPurple)
            ),
            child: Row(
              children: <Widget>[
                Container(
                  height: Utilities().componentWidth(15, context),
                  width: Utilities().componentWidth(1.5, context),
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(
                      left: Utilities().componentWidth(12, context),
                      right: Utilities().componentWidth(2.5, context)
                  ),
                ),
                Container(
                  height: Utilities().componentWidth(10, context),
                  width: Utilities().componentWidth(1.5, context),
                  color: Colors.deepPurple,
                  margin: EdgeInsets.only(
                      left: Utilities().componentWidth(0.001, context)
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}