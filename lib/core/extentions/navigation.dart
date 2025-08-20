import 'package:flutter/material.dart';

void pushTo(BuildContext context, Widget NewPage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage));
}

void pushWithReplacement(BuildContext context, Widget NewPage) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => NewPage),
  );
}
