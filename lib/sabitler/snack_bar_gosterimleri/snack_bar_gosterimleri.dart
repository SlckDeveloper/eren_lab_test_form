import 'package:flutter/material.dart';

const snackBar1 = SnackBar(
  content: Text(
    "Gönderme işlemi başladı ",
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  ),
  backgroundColor: Colors.yellowAccent,
);

const snackBar2 = SnackBar(
  content: Text(
    "Başarılı bir şekilde gönderildi",
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  ),
  backgroundColor: Colors.greenAccent,
);

const snackBar3 = SnackBar(
  content: Text(
    "Giriş yapılıyor..",
    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
  ),
  backgroundColor: Colors.greenAccent,
);
