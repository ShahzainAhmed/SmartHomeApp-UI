import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_home/app/data/constants/app_assets.dart';
import 'package:smart_home/app/data/constants/app_colors.dart';
import 'package:smart_home/app/data/constants/app_typography.dart';
import 'package:smart_home/app/modules/living_room/living_room.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 35,
        title: Text(
          'me.',
          style:
              AppTypography.kExtraBold30.copyWith(color: AppColors.kTextColor),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Your home,\nyour rules",
              textAlign: TextAlign.center,
              style: AppTypography.kExtraBold40
                  .copyWith(color: AppColors.kTextColor, height: 0.9),
            ),
            Text(
              "Manage your home from\nanywhere, anytime.",
              textAlign: TextAlign.center,
              style: AppTypography.kMedium12
                  .copyWith(color: AppColors.kBlackColor),
            ),
            Container(
              height: 370.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppAssets.kLogin)),
              ),
            ),
            InkWell(
              onTap: () => Get.to(() => const LivingRoomScreen()),
              child: Text(
                "Log in",
                textAlign: TextAlign.center,
                style: AppTypography.kMedium14
                    .copyWith(color: AppColors.kTextColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
