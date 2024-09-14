import 'package:flutter/material.dart';

import 'MyProgressIndicator.dart';
class OverallProductRating extends StatelessWidget {
  const OverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text("4.8",style: Theme.of(context).textTheme.displayLarge,)),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              MyProgressIndicator(text: "5",value: 1.0,),
              MyProgressIndicator(text: "3.5",value: 0.75,),
              MyProgressIndicator(text: "2.5",value: 0.3,),
              MyProgressIndicator(text: "4.5",value: 0.85,),
              MyProgressIndicator(text: "3.6",value: 0.72,),
            ],
          ),
        )
      ],
    );
  }
}

