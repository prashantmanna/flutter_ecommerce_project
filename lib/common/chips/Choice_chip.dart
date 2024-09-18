import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_project/common/custom_shapes/CircularWidget.dart';
import 'package:flutter_ecommerce_project/utils/helpers/helper_functions.dart';
class Choice_chip extends StatelessWidget {
  const Choice_chip({
    super.key,
    required this.text,
    required this.selected, 
    this.onSelected,
    
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor = SHelperFunctions.getColor(text) != null;
    final dark = SHelperFunctions.isDarkMode(context);
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor? const SizedBox():Text(text),
        selected: selected,
        labelStyle: TextStyle(color: selected ? dark ? Colors.white : Colors.black : Colors.white),
        onSelected: onSelected,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        selectedColor: Colors.blue,
        avatar: isColor ?
        CircularWidget(width: 50,height: 50,
            bgColor: SHelperFunctions.getColor(text)!) : null,
        backgroundColor: isColor ? SHelperFunctions.getColor(text)! : null,
      
      ),
    );
  }
}
