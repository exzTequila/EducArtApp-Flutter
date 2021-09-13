import 'package:flutter/material.dart';

PreferredSizeWidget customAppBar(String title) {
  return AppBar(
    backgroundColor: Colors.white,
    title: Text(
      title,
      style: TextStyle(color: Colors.black),
    ),
  );
}

Widget answerCard(String text, BuildContext context, {bool? answer}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.07,
    width: MediaQuery.of(context).size.width,
    child: Card(
      color: (answer == null) 
          ? Colors.white
          : (answer)
              ? Colors.green
              : Colors.red,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      elevation: 3.5,
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ),
  );
}

TextStyle headerTextStyle({Color color = Colors.black}) {
  return TextStyle(color: color, fontSize: 24, fontWeight: FontWeight.bold);
}

TextStyle normalTextStyle({Color color = Colors.black}) {
  return TextStyle(color: color, fontSize: 18, fontWeight: FontWeight.normal);
}
