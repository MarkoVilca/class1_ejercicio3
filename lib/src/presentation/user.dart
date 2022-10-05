import 'package:ejercicio1/src/presentation/actions.dart';
import 'package:ejercicio1/src/presentation/header.dart';
import 'package:ejercicio1/src/presentation/posts.dart';
import 'package:ejercicio1/src/presentation/subheader.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  Widget build(BuildContext context) {
    return (Scaffold(
        backgroundColor: Colors.white,
        body:
            Column(children: [header(), subheader(context), actions(), posts(context)])));
  }
}
