import 'package:flutter/material.dart';

import '../../../../Core/Constant/Colors.dart';
import '../../../../Core/Constant/fonts.dart';

class HomeButton1 extends StatelessWidget {
  HomeButton1({super.key, required this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: AppColor.white,
        maxRadius: 25,
        child: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.person_search,
            color: AppColor.greenPrimary,
            size: 30,
          ),
        ),
      ),
    );
  }
}

class HomeButton2 extends StatelessWidget {
  HomeButton2({super.key, required this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
          backgroundColor: AppColor.white,
          maxRadius: 27,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(70),
                border:
                    Border.all(width: 2, color: AppColor.red.withOpacity(0.4))),
            child: Center(
                child: Text(
              "Stop",
              style: redTexttyle().copyWith(fontSize: 12),
            )),
          )),
    );
  }
}

class HomeButton3 extends StatelessWidget {
  HomeButton3({super.key, required this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: AppColor.white,
        maxRadius: 25,
        child: IconButton(
            onPressed: onPressed,
            icon: const Icon(
              Icons.my_location_sharp,
              color: AppColor.greenPrimary,
              size: 30,
            )),
      ),
    );
  }
}
