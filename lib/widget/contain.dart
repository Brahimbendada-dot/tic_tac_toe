import 'package:flutter/material.dart';

class Contain extends StatelessWidget {
  String? value;
  Function()? onClick;
  Contain(this.value, this.onClick);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            color: Color(0xff353535), borderRadius: BorderRadius.circular(20)),
        child: Center(
            child: Text(
          value!,
          style: const TextStyle(
              color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
