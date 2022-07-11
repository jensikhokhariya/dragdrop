import 'package:dragdrop/screen/dragdrop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Dragdrop_S(),
      },
    ),
  );
}
