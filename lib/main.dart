import 'package:flutter/material.dart';

void main() {
  runApp(new MySecondWidget());
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text myText =
        Text("This is a nice photo!", textDirection: TextDirection.ltr);
    Image myImage = Image.network(
        "https://images.pexels.com/photos/1168940/pexels-photo-1168940.jpeg");

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("My App")),
            body: Center(
              child: Column(
                  children: <Widget>[myText, myImage],
                  mainAxisSize: MainAxisSize.min),
            )
        )
    );
  }
}

class MySecondWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<MySecondWidget>{

  String url = "https://source.unsplash.com/random/800x600"; // A random image from Unsplash

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              RaisedButton(
                child: Text("Press me"),
                onPressed: changeURI,
              ),
              Image.network(url)
            ],
          ),
        ),
      ),
    );
  }

  void changeURI() {
    setState(() {
      url = "https://source.unsplash.com/random/800x600/?" +
          "q=${new DateTime.now().millisecondsSinceEpoch}";
    });
  }
}
