import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_button.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;

  void _selectGender(String gender) {
    setState(() {
      selectedGender = gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GenderButton(
          label: 'HOMBRE',
          imagePath: 'assets/images/male.png',
          isSelected: selectedGender == 'Hombre',
          onTap: () => _selectGender('Hombre'),
        ),
        GenderButton(
          label: 'MUJER',
          imagePath: 'assets/images/female.png',
          isSelected: selectedGender == 'Mujer',
          onTap: () => _selectGender('Mujer'),
        ),
      ],
    );
  }
}

