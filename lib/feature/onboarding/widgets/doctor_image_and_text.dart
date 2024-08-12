import 'package:complete_flutter_project/core/theming/colors.dart';
import 'package:complete_flutter_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorImageAndText extends StatelessWidget {
  const DoctorImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      // alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40.w, right: 20.w),
          child: SvgPicture.asset(
            "assets/svgs/background_logo_low_opacity.svg",
            color: ColorManager.mainBlue.withAlpha(10),
            height: 300.36.h,
            width: 308.05.h,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10.w, right: 0.w),
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
            ),
          ),
          child: Image.asset(
            "assets/images/onboarding_doctor.png",
            fit: BoxFit.fill,
            width: 400.w,
            height: 400.07.h,
          ),
        ),
        Positioned(
          // top: 20.h,
          bottom: 0.h,
          left: 0,
          right: 0,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "Best Doctor Appointment App",
              style: TextStyles.font32BlueBold.copyWith(height: 1.4),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
