import 'package:flutter/material.dart';

class ElevationBiuttonWidget extends StatelessWidget {
  final String name;
  final Color? color;
  final Function() onTap;
  final bool isLoading;
  const ElevationBiuttonWidget({
    super.key,
    required this.name,
    this.color,
    required this.onTap,
    required this.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 45,
        decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
            gradient: const LinearGradient(colors: [
              Color(0XFFFF9001),
              Color(0XFFFF4200),
            ]),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 1,
                color: Colors.grey,
                blurRadius: 6,
                offset: Offset(0, 2),
              ),
            ]),
        child: Center(
          child: isLoading
              ? const SizedBox(
                  width: 30,
                  height: 30,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                    color: Colors.white,
                  ),
                )
              : Text(
                  name,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                ),
        ),
      ),
    );
  }
}
