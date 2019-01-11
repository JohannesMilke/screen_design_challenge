import 'package:flutter/material.dart';
import 'package:january4_screen_design_challenge/widget/header_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String appTitle = 'ScreenDesignChallenge';
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: appTitle,
        theme: ThemeData(
          primaryColor: Colors.red,
          dividerColor: Colors.black.withOpacity(0.8),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),
        home: MainPage(appTitle: appTitle),
      );
}

class MainPage extends StatefulWidget {
  final String appTitle;

  const MainPage({this.appTitle});

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text(widget.appTitle)),
        body: Column(
          children: <Widget>[
            HeaderWidget(),
            const SizedBox(height: 32),
            buildMainButton(),
            const SizedBox(height: 32),
            Text(
              'Showcasing the finest food, drinks and travel, Recipes, healthy tips, food photography',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );

  Widget buildMainButton() => IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildButton(5, 'Followers'),
            VerticalDivider(),
            buildButton(38, 'Posts'),
          ],
        ),
      );

  Widget buildButton(int number, String text) => FlatButton(
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Text(
              '$number',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
      );
}
