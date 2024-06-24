// ignore_for_file: unused_import

import 'package:fitness_application/view/fitness/widgets/body_focus_widget.dart';
import 'package:fitness_application/viewmodels/body_focus_data.dart';
import 'package:flutter/material.dart';


class BodyFocus extends StatelessWidget {
  BodyFocus({
    super.key,
  });
  //final List<BodyFocusModel> bodyFocus;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Body Focus',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: bodyFocusData.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return BodyFocusWidget(
                imagePathW: bodyFocusData[index].imagePathW,
                title: bodyFocusData[index].title,
                //exercisesType: bodyFocusData[index].exercisesNumber,
                //exercisesName: [bodyFocusData[index]],

                //route: bodyFocusData[index].route,
              );
            },
          ),
        ),

        // List.generate(
        //     bodyFocusWidget.length,
        //     (index) {
        //       return BodyFocusWidget(
        //         imagePathW: bodyFocusWidget[index].imagePathW,
        //         title: bodyFocusWidget[index].title,
        //       );
        //     },
        //   ),
      ],
    );
  }
}
