import 'package:flutter/cupertino.dart';
import 'package:reverb_calculator_2/models/data.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class DecayTimeSelector extends StatelessWidget {
  final List<String> source;

  DecayTimeSelector({
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
          data.updateNewDecayTimeValue(4.0);
        } else if (measure == '2 bars') {
          data.updateNewDecayTimeValue(2.0);
        } else if (measure == '1 bar') {
          data.updateNewDecayTimeValue(1.0);
        } else if (measure == '1/2 D') {
          data.updateNewDecayTimeValue(0.5 * 1.5);
        } else if (measure == '1/2') {
          data.updateNewDecayTimeValue(0.5);
        } else if (measure == '1/2 T') {
          data.updateNewDecayTimeValue(0.5 / 3 * 2);
        } else if (measure == '1/4 D') {
          data.updateNewDecayTimeValue(0.25 * 1.5);
        } else if (measure == '1/4') {
          data.updateNewDecayTimeValue(0.25);
        } else if (measure == '1/4 T') {
          data.updateNewDecayTimeValue(0.25 / 3 * 2);
        } else if (measure == '1/8 D') {
          data.updateNewDecayTimeValue(0.125 * 1.5);
        } else if (measure == '1/8') {
          data.updateNewDecayTimeValue(0.125);
        } else if (measure == '1/8 T') {
          data.updateNewDecayTimeValue(0.125 / 3 * 2);
        } else if (measure == '1/16 D') {
          data.updateNewDecayTimeValue(0.0625 * 1.5);
        } else if (measure == '1/16') {
          data.updateNewDecayTimeValue(0.0625);
        } else if (measure == '1/16 T') {
          data.updateNewDecayTimeValue(0.0625 / 3 * 2);
        } else if (measure == '1/32 D') {
          data.updateNewDecayTimeValue(0.03125 * 1.5);
        } else if (measure == '1/32') {
          data.updateNewDecayTimeValue(0.03125);
        } else if (measure == '1/32 T') {
          data.updateNewDecayTimeValue(0.03125 / 3 * 2);
        } else if (measure == '1/64 D') {
          data.updateNewDecayTimeValue(0.015625 * 1.5);
        } else if (measure == '1/64') {
          data.updateNewDecayTimeValue(0.015625);
        } else if (measure == '1/64 T') {
          data.updateNewDecayTimeValue(0.015625 / 3 * 2);
        } else if (measure == '1/128') {
          data.updateNewDecayTimeValue(0.0078125 / 3 * 2);
        } else if (measure == 'None') {
          data.updateNewDecayTimeValue(0.0);
        }
        data.updateDecayTime();
      },
      children: values(),
      scrollController: FixedExtentScrollController(initialItem: 2),
    );
  }
}
