import 'dart:convert';

import 'package:ejercicio1/src/domain/user.dart';
import 'package:flutter/material.dart';

subheader(context) {
  return (FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/json/user.json'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = jsonDecode(snapshot.data!);
          final user = User.fromJson(data);
          return Container(
              margin: EdgeInsets.all(10),
              child: Column(children: [
                SizedBox(
                    width: double.infinity,
                    child: Container(
                        child: Text(user.name,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 32,
                              fontWeight: FontWeight.w300,
                            )))),
                SizedBox(
                    width: double.infinity,
                    child: Container(
                        child: Text(user.about,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            )))),
                Row(
                  children: [
                    TextButton(
                        onPressed: null,
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            )),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.grey)),
                        child: Text('Follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ))),
                    Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(user.followers.toString() + " Followers",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            )))
                  ],
                )
              ]));
        }
        return const Text('Empty data');
      }));
}
