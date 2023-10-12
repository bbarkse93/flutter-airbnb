import 'package:airbnb/size.dart';
import 'package:airbnb/style.dart';
import 'package:flutter/material.dart';

class CommonFormField extends StatelessWidget {
  final hintText;
  final prefixText;
  const CommonFormField({super.key, this.hintText, this.prefixText});

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
                hintText: hintText,
              ),
            ),
          ),
        ),
        Positioned(
            top: 8,
            left: 20,
            child: Text(
              prefixText,
              style: overLine(),
            ))
      ],
    );
  }
}
