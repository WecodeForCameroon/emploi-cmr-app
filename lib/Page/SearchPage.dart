import 'file:///C:/Users/JAVAE/Documents/emploi-nc-app/lib/Widget/Widget_ListOffers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      debugShowCheckedModeBanner: false,
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
                            Expanded(child: Icon(Icons.search)),
                            Expanded(child: new Text('Recherches'))
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          children: <Widget>[
                            Expanded(child: Icon(Icons.youtube_searched_for)),
                            Expanded(child: new Text('Recherches Avancées'))
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
              new Text('Recherches'),
              new Text('Recherches Avancées'),
            ],
          ),
        ),
      ),
    );
  }
}