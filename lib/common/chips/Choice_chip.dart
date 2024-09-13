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
    return ChoiceChip(
      label: isColor? SizedBox():Text(''),
      selected: selected,
      labelStyle: TextStyle(color: selected ?Colors.white:null),
      onSelected: onSelected,
      labelPadding: const EdgeInsets.all(0),
      shape: CircleBorder(),
      padding: EdgeInsets.all(0),
      selectedColor: Colors.green,
      avatar: isColor ?
      CircularWidget(width: 50,height: 50,bgColor: SHelperFunctions.getColor(text)!) : null
    );
  }
}
