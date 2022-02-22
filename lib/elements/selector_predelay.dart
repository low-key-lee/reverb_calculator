import 'package:flutter/cupertino.dart';
import 'package:reverb_calculator_2/models/data.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class PreDelaySelector extends StatelessWidget {
  final List<String> source;

  PreDelaySelector({
    this.source,
  });

  List<Text> values() {
    List<Text> options = [];

    for (String value in source) {
      Text option = Text(value);
      options.add(option);
    }

    return options;
  }

  @override
  Widget build(BuildContext context) {
    final data = context.watch<Data>();

    return CupertinoPicker(
      backgroundColor: Colors.white38,
      itemExtent: 32.0,
      onSelectedItemChanged: (i) {
        String measure = source[i];
        if (measure == '4 bars') {
          data.updateNewPreDelayValue(4.0);
        } else if (measure == '2 bars') {
          data.updateNewPreDelayValue(2.0);
        } else if (measure == '1 bar') {
          data.updateNewPreDelayValue(1.0);
        } else if (measure == '1/2 D') {
          data.updateNewPreDelayValue(0.5 * 1.5);
        } else if (measure == '1/2') {
          data.updateNewPreDelayValue(0.5);
        } else if (measure == '1/2 T') {
          data.updateNewPreDelayValue(0.5 / 3 * 2);
        } else if (measure == '1/4 D') {
          data.updateNewPreDelayValue(0.25 * 1.5);
        } else if (measure == '1/4') {
          data.updateNewPreDelayValue(0.25);
        } else if (measure == '1/4 T') {
          data.updateNewPreDelayValue(0.25 / 3 * 2);
        } else if (measure == '1/8 D') {
          data.updateNewPreDelayValue(0.125 * 1.5);
        } else if (measure == '1/8') {
          data.updateNewPreDelayValue(0.125);
        } else if (measure == '1/8 T') {
          data.updateNewPreDelayValue(0.125 / 3 * 2);
        } else if (measure == '1/16 D') {
          data.updateNewPreDelayValue(0.0625 * 1.5);
        } else if (measure == '1/16') {
          data.updateNewPreDelayValue(0.0625);
        } else if (measure == '1/16 T') {
          data.updateNewPreDelayValue(0.0625 / 3 * 2);
        } else if (measure == '1/32 D') {
          data.updateNewPreDelayValue(0.03125 * 1.5);
        } else if (measure == '1/32') {
          data.updateNewPreDelayValue(0.03125);
        } else if (measure == '1/32 T') {
          data.updateNewPreDelayValue(0.03125 / 3 * 2);
        } else if (measure == '1/64 D') {
          data.updateNewPreDelayValue(0.015625 * 1.5);
        } else if (measure == '1/64') {
          data.updateNewPreDelayValue(0.015625);
        } else if (measure == '1/64 T') {
          data.updateNewPreDelayValue(0.015625 / 3 * 2);
        } else if (measure == '1/128') {
          data.updateNewPreDelayValue(0.0078125 / 3 * 2);
        } else if (measure == 'None') {
          data.updateNewPreDelayValue(0.0);
        }
        data.updatePreDelay();
        // data.updateDecayTime(
        //     ((60 / data.tempo) * 4 * newValue * 1000) - data.preDelay);
      },
      children: values(),
      scrollController:
          FixedExtentScrollController(initialItem: values().length),
    );
  }
}
