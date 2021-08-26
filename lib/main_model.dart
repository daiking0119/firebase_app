import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'ボタンを押せ';

  void changeKboyText() {
    kboyText = 'ボタンが押されたぜ！';
    notifyListeners();
  }
}
