// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import '../../../constant/icons.dart';
// import '../../../theme/theme_extension/app_colors.dart';
// import 'bottom_sheet_controller.dart';

// class BottomBarWidget extends ConsumerWidget {
//   final StatefulNavigationShell navigationShell;

//   const BottomBarWidget({super.key, required this.navigationShell});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom > 0;

//     final isNavBarVisible = ref.watch(navBarVisibilityProvider);

//     return Scaffold(
//       body: navigationShell,
//       floatingActionButton: AnimatedOpacity(
//         opacity: isKeyboardOpen || !isNavBarVisible ? 0.0 : 1.0,
//         duration: const Duration(milliseconds: 300),
//         curve: Curves.easeInOut,
//         child: AnimatedSlide(
//           offset: isKeyboardOpen || !isNavBarVisible ? const Offset(0, 1) : Offset.zero,
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeInOut,
//           child: Container(
//             alignment: Alignment.bottomCenter,
//             padding: EdgeInsets.only(left: 24.w, bottom: 8.h),
//             child: ClipRRect(
//               borderRadius: BorderRadius.circular(50.r),
//               child: SizedBox(
//                 height: 68.h,
//                 width: 327.w,
//                 child: BottomNavigationBar(
//                   currentIndex: navigationShell.currentIndex,
//                   onTap: (index) => navigationShell.goBranch(index),
//                   type: BottomNavigationBarType.fixed,
//                   backgroundColor: AppColors.bottomNavBarBackground,
//                   elevation: 0,
//                   selectedLabelStyle: TextStyle(fontSize: 0),
//                   unselectedLabelStyle: TextStyle(fontSize: 0),
//                   items: [
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         navigationShell.currentIndex == 0
//                             ? AppIcons.listviewIconBlu
//                             : AppIcons.listviewIcon,
//                       ),
//                       label: "",
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         navigationShell.currentIndex == 1
//                             ? AppIcons.addIconBlu
//                             : AppIcons.addIcon,
//                       ),
//                       label: "",
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         navigationShell.currentIndex == 2
//                             ? AppIcons.histogramIconBlu
//                             : AppIcons.histogramIcon,
//                       ),
//                       label: "",
//                     ),
//                     BottomNavigationBarItem(
//                       icon: SvgPicture.asset(
//                         navigationShell.currentIndex == 3
//                             ? AppIcons.mobileDataIconBlu
//                             : AppIcons.mobileDataIcon ,
//                       ),
//                       label: "",
//                     ),
                   
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }