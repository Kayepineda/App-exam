import 'package:flutter/material.dart';
import 'fade_size.dart';

class TextInputField extends StatelessWidget {
  final bool showSignIn;
  const TextInputField(this.showSignIn, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFFD0D0D0),
                width: 1.5,
              )),
          child: const TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Email",
              hintStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFFC2C2C2),
              ),
            ),
          ),
        ),
        SizeFade(
          child: showSignIn
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                  child: Text(
                    "Error",
                    style: TextStyle(
                      color: Theme.of(context).errorColor,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        )
      ],
    );
  }
}
