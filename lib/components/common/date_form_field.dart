import 'package:airbnb/components/common/calendar.dart';
import 'package:airbnb/size.dart';
import 'package:airbnb/style.dart';
import 'package:flutter/material.dart';

class DateFormField extends StatefulWidget {
  final hintText;
  final prefixText;
  const DateFormField({super.key, this.hintText, this.prefixText});

  @override
  State<DateFormField> createState() => _DateFormFieldState();
}

class _DateFormFieldState extends State<DateFormField> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(gap_xs),
          child: SizedBox(
            width: double.infinity,
            child: TextFormField(
              textAlignVertical: TextAlignVertical.bottom,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: widget.hintText,
              ),
              onTap: () {},
            ),
          ),
        ),
        Positioned(
          top: 8,
          left: 20,
          child: Text(
            widget.prefixText,
            style: overLine(),
          ),
        ),
        Positioned(
          top: 20,
          right: 10,
          child: IconButton(
            icon: Icon(Icons.calendar_month),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [Calendar()],
                  );
                },
              );
            },
          ),
        )
      ],
    );
  }
}
