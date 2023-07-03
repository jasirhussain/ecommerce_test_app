// ignore_for_file: must_be_immutable, dead_code

import 'package:ecommerce_test/util/app_color.dart';
import 'package:flutter/material.dart';

class SignTextFeild extends StatefulWidget {
  String title;
  final String hintText;
  final TextEditingController controller;
  SignTextFeild(
      {super.key,
      required this.title,
      required this.hintText,
      required this.controller});

  @override
  State<SignTextFeild> createState() => _SignTextFeildState();
}

class _SignTextFeildState extends State<SignTextFeild> {
  bool isVisible = false;
  Widget build(BuildContext context) {
    bool isVisible = false;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.secondary),
            child: TextField(
              obscureText: isVisible ? false : true,
              controller: widget.controller,
              decoration: InputDecoration(
                suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isVisible = !isVisible;
                        print(isVisible);
                      });
                    },
                    child: isVisible
                        ? Icon(Icons.visibility)
                        : Icon(Icons.visibility_off)),
                border: InputBorder.none,
                hintText: widget.hintText,
                contentPadding: const EdgeInsets.only(left: 10, top: 10),
              ),
            )),
      ],
    );
  }
}
