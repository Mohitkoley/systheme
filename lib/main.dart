import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return DarkLightTheme();
  }
}

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({
    Key key,
  }) : super(key: key);

  @override
  _DarkLightThemeState createState() => _DarkLightThemeState();
}
ThemeData _lightTheme = ThemeData(
    accentColor: Color.fromRGBO(13, 80, 181, 2.0),
    brightness: Brightness.light,
    primaryColor: Colors.blue,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
  ),
);

bool _light = true;

ThemeData _darkTheme = ThemeData(
  disabledColor: Colors.green,
  accentColor: Colors.lightGreen,
  brightness: Brightness.dark,
  primaryColor: Colors.green,
  buttonTheme: ButtonThemeData(
    buttonColor: Colors.green,
  ),
);



class _DarkLightThemeState extends State<DarkLightTheme> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light? _lightTheme: _darkTheme,
      darkTheme: _darkTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(
        title: Text("Material App bar"),
      ),
        body: Container(
          padding: EdgeInsets.all(32.0),

          alignment: Alignment.center,
          child: Center(
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    labelText: "Enter Name"
                  ),
                ),


                RaisedButton(
                  child: Text("Tap me"),
                    onPressed: (){

                }),

                Switch(value: _light,onChanged: (state){
                  setState(() {
                    _light = state;
                  });
                },),
                Text('toggle the switch')
              ],
            ),
          ),
        ),

      ),

    );
  }
}