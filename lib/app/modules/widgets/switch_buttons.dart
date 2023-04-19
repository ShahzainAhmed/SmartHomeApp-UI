import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home/app/data/constants/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../data/constants/app_typography.dart';

class MySwitchButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function(bool)? onChanged;
  final bool switchValue;

  const MySwitchButton({
    super.key,
    required this.icon,
    required this.title,
    required this.onChanged,
    required this.switchValue,
  });

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20.r)),
        depth: 5,
        lightSource: LightSource.topLeft,
        color: AppColors.kBackgroundColor,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        height: 120.h,
        width: 120.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 5.r,
                  backgroundColor: switchValue
                      ? AppColors.kPrimaryColor
                      : AppColors.kGreyColor,
                ),
              ],
            ),
            Icon(icon),
            Text(
              title,
              style: AppTypography.kBold12,
            ),
            Text(
              "1 kWh",
              style:
                  AppTypography.kBold10.copyWith(color: AppColors.kGreyColor),
            ),
            SizedBox(height: 10.h),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                NeumorphicSwitch(
                  value: switchValue,
                  style: const NeumorphicSwitchStyle(
                    activeTrackColor: AppColors.kPrimaryColor,
                    inactiveTrackColor: AppColors.kBackgroundColor,
                    activeThumbColor: AppColors.kWhiteColor,
                    inactiveThumbColor: AppColors.kWhiteColor,
                    lightSource: LightSource.bottom,
                  ),
                  height: 25.h,
                  onChanged: onChanged,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
