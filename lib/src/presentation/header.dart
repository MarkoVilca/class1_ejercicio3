import 'package:flutter/material.dart';

AppBar header() {
  return (AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: Icon(
        Icons.arrow_circle_left,
        color: Colors.grey,
      ),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.pending,
            color: Colors.grey,
          )),
    ],
  ));
}
