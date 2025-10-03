import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical_store_app/core/constant/padding.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';
import 'package:medical_store_app/src/common_widgets/Custom_appbar.dart';

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
                  ],
                ),
              ),
            ),
          ),
          20.h.verticalSpace,
        ],
      ),
    );
  }
}
