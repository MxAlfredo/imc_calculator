import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class GenderButton extends StatelessWidget {
  final String label;
  final String imagePath;
  final bool isSelected;
  final VoidCallback onTap;

  const GenderButton({
    required this.label,
    required this.imagePath,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: Container(
            decoration: BoxDecoration(
              color: isSelected
                  ? AppColors.backgroundComponentSelected
                  : AppColors.backgroundComponent,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Image(
                    image: AssetImage(imagePath),
                    height: 100,
                  ),
                  const SizedBox(height: 10),
                  Text(label, style: TextStyles.bodyText),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
