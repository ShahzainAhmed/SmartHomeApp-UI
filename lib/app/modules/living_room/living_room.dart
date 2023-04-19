import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_home/app/data/constants/app_assets.dart';
import 'package:smart_home/app/data/constants/app_colors.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:smart_home/app/models/switch_button_model.dart';
import 'package:smart_home/app/modules/widgets/switch_buttons.dart';
import 'package:thermostat/thermostat.dart';

import '../../data/constants/app_typography.dart';

class LivingRoomScreen extends StatefulWidget {
  const LivingRoomScreen({super.key});

  @override
  State<LivingRoomScreen> createState() => _LivingRoomScreenState();
}

class _LivingRoomScreenState extends State<LivingRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,
        titleSpacing: 35,
        title: Text(
          'me.',
          style:
              AppTypography.kExtraBold30.copyWith(color: AppColors.kTextColor),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.w),
            child: Row(
              children: [
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.kBlackColor,
                    borderRadius: BorderRadius.circular(10.r),
                    image: DecorationImage(
                        image: AssetImage(AppAssets.kAvatar), fit: BoxFit.fill),
                  ),
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 40.h,
                  width: 40.w,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryColor,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: const Icon(Icons.menu),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Thermostat(
              size: 250,
              setPointMode: SetPointMode.displayAndEdit,
              turnOn: true,
              theme: ThermostatTheme.light(
                thumbColor: AppColors.kPrimaryColor,
                glowColor: AppColors.kTextColor,
                turnOnColor: AppColors.kPrimaryColor,
              ),
              maxVal: 30,
              minVal: 86,
              curVal: 86,
              setPoint: 73,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 3.h),
            child: Container(
              padding: EdgeInsets.only(left: 20.w),
              height: 400.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.r),
                color: AppColors.kBackgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: AppColors.kBlackColor.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ListTile(
                    title: Text(
                      "Living room",
                      style: AppTypography.kExtraBold20
                          .copyWith(color: AppColors.kTextColor),
                    ),
                    subtitle: Text(
                      "2 connected devices",
                      style: AppTypography.kBold10
                          .copyWith(color: AppColors.kGreyColor),
                    ),
                    trailing: Padding(
                      padding: EdgeInsets.only(right: 20.w),
                      child:
                          const Icon(Icons.menu, color: AppColors.kGreyColor),
                    ),
                  ),
                  SizedBox(
                    height: 300.h,
                    width: double.infinity,
                    child: GridView.builder(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.h, horizontal: 10.w),
                      itemCount: myList.length,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                      ),
                      itemBuilder: (context, index) {
                        return MySwitchButton(
                          icon: myList[index].icon,
                          title: myList[index].title,
                          onChanged: (value) {
                            setState(() {
                              myList[index].switchValue = value;
                            });
                          },
                          switchValue: myList[index].switchValue,
                        );
                      },
                    ),
                  ),
                  const Icon(Icons.menu, color: AppColors.kGreyColor),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


/* 
Center(
            child: Container(
              height: 300.h,
              width: 300.w,
              color: AppColors.kWhiteColor,
              child: CustomPaint(
                foregroundPainter: LinePainter(),
              ),
            ),
          ),


class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = AppColors.kBlackColor
      ..strokeWidth = 5
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(0, 0), Offset(0, 100), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
 */

