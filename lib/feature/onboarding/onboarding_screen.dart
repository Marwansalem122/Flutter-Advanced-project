import 'package:complete_flutter_project/core/theming/styles.dart';
import 'package:complete_flutter_project/feature/onboarding/widgets/doc_logo_and_name.dart';
import 'package:complete_flutter_project/feature/onboarding/widgets/doctor_image_and_text.dart';
import 'package:complete_flutter_project/feature/onboarding/widgets/get_started_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
        child: Column(
          children: [
            const DocLogoAndName(),
            SizedBox(
              height: 30.h,
            ),
            const DoctorImageAndText(),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 41.4.w),
              child: Column(children: [
                Text(
                  "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                  style: TextStyles.font13GreyRegular,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30.h,
                ),
                const GetStartedButton()
              ]),
            )
          ],
        ),
      ),
    )));
  }
}
