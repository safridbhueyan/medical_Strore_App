import 'package:flutter/material.dart';
import 'package:medical_store_app/core/theme/theme_extension/app_colors.dart';

class CustomRadioTile extends StatelessWidget {
  final bool value;
  final bool groupValue;
  final String title;
  final void Function(bool?) onChanged;

  const CustomRadioTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme;
    return Row(
      children: [
        Transform.scale(
          scale: 1.5,
          child: Radio<bool>(
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
            fillColor: WidgetStateProperty.resolveWith<Color>(
              (states) => Colors.green,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          title,
          style: style.bodyMedium!.copyWith(
            color: AppColors.textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
