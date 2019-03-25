import 'package:flutter/widgets.dart';

void main() {
  runApp(new MyFirstWidget());
}

class MyFirstWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
//    return Text("This is nice!", textDirection: TextDirection.ltr);
    return Image.network("https://images.pexels.com/photos/1168940/pexels-photo-1168940.jpeg");

  }
}
