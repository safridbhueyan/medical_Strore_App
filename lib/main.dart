import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:medical_store_app/core/theme/theme.dart';
import 'package:medical_store_app/src/features/shop_Screen/view/shop_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);

  await ScreenUtil.ensureScreenSize();

  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const double deviceWidth = 375.0;
  static const double deviceHeight = 812.0;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        final designSize = orientation == Orientation.portrait
            ? const Size(deviceWidth, deviceHeight)
            : const Size(deviceHeight, deviceWidth);

        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true,
          splitScreenMode: true,
          ensureScreenSize: true,
          builder: (_, child) {
            return GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Medical Store App',
              theme: AppTheme.lightTheme,
              home: child,
            );
          },
          child: const ShopScreen(),
        );
      },
    );
  }
}
