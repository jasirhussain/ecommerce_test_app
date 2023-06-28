import 'package:flutter/material.dart';

import '../../util/app_color.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? controller;
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextFormField(
              controller: controller,
              readOnly: false,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColor.secondary,
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: 'Search',
                  hintStyle:
                      TextStyle(color: AppColor.secondaryLight, fontSize: 13),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(13))),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
              color: AppColor.secondary,
              borderRadius: BorderRadius.circular(14)),
          child: Icon(
            Icons.tune,
            color: AppColor.secondaryLight,
          ),
        )
      ],
    );
  }
}
