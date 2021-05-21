import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class Utils{
  static void showToast(String message){
    Fluttertoast.showToast(msg: message);
  }

  static Widget getDob(String date, BuildContext context) {
    DateTime dateTime = DateTime.parse(date);
    String dob = DateFormat("dd/MM/yyyy").format(dateTime);
    return Text(dob, style: Theme.of(context).textTheme.bodyText2);
  }
}