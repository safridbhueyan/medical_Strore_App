import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/checkout_screen.dart/view/widgets/custom_radio_tile.dart';
import 'package:medical_store_app/src/common_widgets/Custom_appbar.dart';
import 'package:medical_store_app/src/features/cart_screen/view/widgets/custom_order_button.dart';
import 'package:medical_store_app/src/features/order_overview_screen/view/overview_screen.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;

    return Scaffold(
      body: Column(
        children: [
          40.h.verticalSpace,
          Padding(
            padding: AppPadding.screenHorizontal,
            child: CustomAppbar(title: "Checkout"),
          ),
          26.h.verticalSpace,
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: AppPadding.screenHorizontal,
                child: Column(
                  children: [
                    Padding(
                      padding: AppPadding.screenHorizontal,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Personal Information",
                          style: style.titleSmall!.copyWith(
                            color: AppColors.textColor,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                    13.h.verticalSpace,

                    FormBuilderTextField(
                      name: 'Your Name',
                      decoration: const InputDecoration(labelText: 'Your Name'),
                    ),
                    13.h.verticalSpace,

                    FormBuilderTextField(
                      name: 'Phone Number',
                      decoration: const InputDecoration(
                        labelText: 'Phone Number',
                      ),
                    ),
                    13.h.verticalSpace,

                    FormBuilderTextField(
                      name: 'Mail Address',
                      decoration: const InputDecoration(
                        labelText: 'Mail Address',
                      ),
                    ),

                    20.h.verticalSpace,

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Shipping Address",
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    13.h.verticalSpace,

                    FormBuilderTextField(
                      name: 'Home/Office',
                      decoration: const InputDecoration(
                        labelText: 'Home/Office',
                      ),
                    ),
                    10.h.verticalSpace,
                    SizedBox(
                      height: 102.h,
                      child: FormBuilderTextField(
                        maxLines: 4,
                        name: 'Office',
                        decoration: const InputDecoration(labelText: ''),
                      ),
                    ),

                    20.h.verticalSpace,

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Shipping Charge",
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    13.h.verticalSpace,

                    CustomRadioTile(
                      value: true,
                      groupValue: true,
                      title: 'Inside Dhaka (৳50)',
                      onChanged: (bool) {},
                    ),

                    CustomRadioTile(
                      value: true,
                      groupValue: true,
                      title: 'Outside Dhaka (৳100)',
                      onChanged: (bool) {},
                    ),

                    20.h.verticalSpace,

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Voucher/Coupon",
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    13.h.verticalSpace,

                    FormBuilderTextField(
                      name: 'Voucher/Coupon',
                      decoration: const InputDecoration(labelText: ''),
                    ),

                    20.h.verticalSpace,

                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Shipping Charge",
                        style: style.titleSmall!.copyWith(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),

                    13.h.verticalSpace,

                    CustomRadioTile(
                      value: true,
                      groupValue: true,
                      title:
                          'Cash on Delivery\nPay with Cash at the time of delivery',
                      onChanged: (bool) {},
                    ),
                    35.h.verticalSpace,

                    CustomOrderButton(
                      title: '',
                      onTap: () {},
                      isCustomModeOn: true,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(OverviewScreen());
                        },
                        child: Container(
                          padding: EdgeInsets.all(10.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: AppColors.onPrimary,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "Total 5 Items",
                                    style: style.labelSmall!.copyWith(
                                      color: Color(0xffE4EFE0),
                                    ),
                                  ),
                                  Text("৳1,000"),
                                ],
                              ),
                              10.w.horizontalSpace,
                              Container(
                                height: 28.h,
                                color: AppColors.onSurface,
                                width: 1.4,
                              ),
                              10.w.horizontalSpace,
                              Text("Place Order"),
                            ],
                          ),
                        ),
                      ),
                    ),
                    200.h.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
