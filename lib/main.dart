// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: <Widget>[
        Expanded(
          /*
          * #1
          *
          * Putting a Column inside an Expanded widget stretches the column to
          * use all remaining free space in the row. Setting the
          * crossAxisAlignment property to CrossAxisAlignment.start
          * positions the column at the start of the row.
          *
          */
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              /* #2
              *
              * Putting the first row of text inside a Container enables you to
              * add padding.
              * The second child in the Column, also text, displays as grey.
              *
              */
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(
                  'Oeschinen Lake Campground',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                ),
              )
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              )
            ],
          ),
        ),
        /* #3
        *
        * The last two items in the title row are a star icon, painted red, and
        * the text “41”.
        * The entire row is in a Container and padded along each edge by 32
        * pixels.
        *
        * */
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        Text('41'),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layouts demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layout demo'),
        ),
        body: Column(
          children: <Widget>[
            titleSection,
          ],
        ),
      ),
    );
  }
}
