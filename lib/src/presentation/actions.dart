import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container actions() {
  return (Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text("LATEST",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                )),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.all(5), child: Icon(Icons.view_agenda)),
                  Padding(
                      padding: EdgeInsets.all(5), child: Icon(Icons.view_headline)),
                ],
              ))
        ],
      )));
}
