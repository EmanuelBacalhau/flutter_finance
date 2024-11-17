import 'package:flutter/material.dart';
import 'package:flutter_finance/constants/app_color.dart';

class BasicButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isOutlined;

  const BasicButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.isOutlined = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        backgroundColor:
            isOutlined ? Colors.white : const Color(AppColor.darkBlue),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: isOutlined
              ? const BorderSide(
                  color: Color(AppColor.darkBlue),
                )
              : BorderSide.none,
        ),
        shadowColor: const Color(AppColor.darkBlue),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isOutlined ? const Color(AppColor.darkBlue) : Colors.white,
        ),
      ),
    );
  }
}
