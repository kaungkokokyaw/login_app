import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox(this.text);

  final String text;

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.black)),
                child: isSelected
                    ? Icon(
                        Icons.check,
                        size: 17,
                        color: Colors.blue,
                      )
                    : null,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Text(widget.text),
          ],
        ),
      ],
    );
  }
}
