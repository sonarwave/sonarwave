import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier {
  HomeProvider();

  final TextEditingController _roomIdInputController = TextEditingController();
  TextEditingController get roomIdInputController => _roomIdInputController;
}
