import 'package:flutter/material.dart';

class ForcastFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List list = <Widget>[
      getWeatherView("Today", "Sunny", "80/63", Icons.wb_sunny),
      new Divider(),
      getWeatherView("Tomorrow", "Rainy", "78/60", Icons.wb_cloudy),
    ];
    return new Center(child: new ListView(children: list));
  }

  ListTile getWeatherView(
      String title, String subtitle, String trailing, IconData icon) {
    return new ListTile(
        trailing: new Text(trailing),
        leading: new Icon(icon),
        subtitle: new Text(subtitle),
        title: new Text(
          title,
          style: new TextStyle(fontWeight: FontWeight.bold),
        ));
  }
}
