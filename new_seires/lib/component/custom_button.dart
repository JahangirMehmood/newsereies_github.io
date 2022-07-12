import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.buttonclr,
    required this.buttontext,
    required this.textclr,
    required this.handlerButtonClick,
    required this.size,
  }) : super(key: key);
  final Color buttonclr;
  final String buttontext;
  final Color textclr;
  final Function handlerButtonClick;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
        child: ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
                backgroundColor: MaterialStateProperty.all(buttonclr)),
            onPressed: () {
              handlerButtonClick();
            },
            child: Text(
              buttontext,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: textclr),
            )),
      ),
    );
  }
}
