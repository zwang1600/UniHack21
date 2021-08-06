import 'package:critter_flutter/widgets/battleGround_widget.dart';
import 'package:critter_flutter/widgets/upload_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Critter',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.cyan[200],
        primaryColorDark: Colors.cyan[400],
        accentColor: Colors.purple[100],
        textTheme: TextTheme(
                  headline1:
                      TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                  headline2:
                      TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                  headline3: TextStyle(
                    fontSize: 15.0,
                    height: 1.5,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  // For post and commet time
                  headline4: TextStyle(fontSize: 11.0),
                  subtitle1: TextStyle(fontSize: 15.0),
                  subtitle2:
                      TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic),
                  bodyText1: TextStyle(fontSize: 15.0),
                  bodyText2: TextStyle(fontSize: 15.0, height: 1.5),
        )
      ),
      home: MyHomePage(title: 'Critter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BattleGroundWidget(),
            UploadWidget(),
          ],
        ),
      ),
    );
  }
}
