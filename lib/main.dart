import 'package:flutter/material.dart';
import 'package:projeto_teste/calculator.dart';
import 'package:splashscreen/splashscreen.dart';

//void main() => runApp(Splash());
void main(){
  runApp(new MaterialApp(home:new Splash()));
}

class Splash extends StatefulWidget{
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<Splash>{
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      backgroundColor: Colors.deepPurple, 
      navigateAfterSeconds: new MyApp(),
      title: new Text("Calculadora", style: new TextStyle(fontFamily: 'Calculator', fontSize: 75, color: Colors.white)),
      photoSize: 100.0,
      loadingText: new Text("loading...", style: new TextStyle(fontFamily: 'Calculator', fontSize: 15, color: Colors.white),),
      );
  }

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Calculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}
