import 'file:///C:/Users/JAVAE/Documents/emploi-nc-app/lib/Widget/Widget_ListOffers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/Widget_GridView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue[900],
      ),
      darkTheme: ThemeData(
        primaryColor: Colors.blue[900],
        brightness: Brightness.dark,
      ),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor:  Colors.blue[900],
            flexibleSpace: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children : [
                TabBar(
                  tabs: [
                    Tab(
                      child: Row(
                          children: <Widget>[
                            Expanded(child: Icon(Icons.history)),
                            Expanded(child: new Text('Récentes'))
                          ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        children: <Widget>[
                          Expanded(child: Icon(Icons.list)),
                          Expanded(child: new Text('Toutes'))
                        ],
                      ),
                    )
                  ],
                ),
              ]
            ),
          ),
          body: TabBarView(
            children: [
              GridViewWidget(),
              ListOffers(),
            ],
          ),
        ),
      ),
    );
  }
}