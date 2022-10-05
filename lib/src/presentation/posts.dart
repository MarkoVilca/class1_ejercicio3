import 'dart:convert';

import 'package:ejercicio1/src/domain/article.dart';
import 'package:flutter/material.dart';

FutureBuilder posts(context) {
  return (FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString('assets/json/articles.json'),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final data = jsonDecode(snapshot.data!) as List;
          final articles =
              data.map((article) => Article.fromJson(article)).toList();
          return Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 8.0),
                  shrinkWrap: true,
                  itemCount: articles.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    articles[index].title,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    articles[index].overview,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          articles[index].thumbnail),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            )));
                  }));
        }
        return const Text('Empty data');
      }));
}
