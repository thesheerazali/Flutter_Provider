import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier {
  bool? isEligible;
  String? eligiblityMessage = "";

  void eligibilityCheck(int age) {
    if (age >= 18) {
      isEligible = true;
      eligiblityMessage = "You are Eligible";
      notifyListeners();
    } else {
      isEligible = false;
      eligiblityMessage = "You are Not Eligile..!";
    }
  }
}
