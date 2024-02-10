import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

Future awesomeDialog(BuildContext context, String win, Function()? onClick) {
  return AwesomeDialog(
    context: context,
    dialogType: DialogType.success,
    animType: AnimType.rightSlide,
    title: 'Winner',
    desc: 'Player ${win} is win',
    descTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    btnOkOnPress: onClick,
  ).show();
}
