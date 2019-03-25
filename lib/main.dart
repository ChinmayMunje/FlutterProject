import 'package:flutter/widgets.dart';

void main() {
  runApp(new MyFirstWidget());
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text myText =
        Text("This is a nice photo!", textDirection: TextDirection.ltr);
    Image myImage = Image.network(
        "https://images.pexels.com/photos/1168940/pexels-photo-1168940.jpeg");

    return Center(child: Column(
        children: <Widget>[myText, myImage],
        mainAxisSize: MainAxisSize.min
      )
    );
  }
}
