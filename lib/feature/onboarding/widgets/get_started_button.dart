import 'package:complete_flutter_project/core/helpers/extensions.dart';
import 'package:complete_flutter_project/core/routing/routes.dart';
import 'package:complete_flutter_project/core/theming/colors.dart';
import 'package:complete_flutter_project/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 311.w,
      child: ElevatedButton(
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: ColorManager.mainBlue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        child: Text("Get Started", style: TextStyles.font16WhiteSemiBold),
      ),
    );
  }
}
