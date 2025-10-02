
import 'package:flutter/cupertino.dart';

push(context, screen) {
  return Navigator.push(context, CupertinoPageRoute(builder: (context) => screen));
}
pop(context) {
  return Navigator.pop(context);
}
pushAndRemoveUntil(context, screen) {
  return Navigator.pushAndRemoveUntil(
      context, CupertinoPageRoute(builder: (context) => screen), (route) => false );
}