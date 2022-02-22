// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reverb_calculator_2/elements/background_image_widget.dart';
import 'package:reverb_calculator_2/elements/selector_decaytime.dart';
import 'package:reverb_calculator_2/elements/selector_predelay.dart';
import 'package:reverb_calculator_2/models/data.dart';
import 'package:reverb_calculator_2/elements/tempo_input_field.dart';
import 'package:reverb_calculator_2/elements/display_box.dart';

class DisplayPage extends StatefulWidget {
  @override
  _DisplayPageState createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  @override
  Widget build(BuildContext context) {
    final data = context.watch<Data>();

    return BackgroundImageWidget(
      image: AssetImage("images/cn_tower.jpeg"),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Reverb Calculator",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: 250,
              child: Text(
                "Enter your tempo and select the desired decay time and pre-delay.",
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DisplayBox(
                  label: 'Pre Delay',
                  value: data.preDelay,
                  selector: PreDelaySelector(
                    source: data.preDelayValues,
                  ),
                ),
                DisplayBox(
                  label: 'Decay Time',
                  value: data.decayTime,
                  selector: DecayTimeSelector(
                    source: data.decayTimeValues,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48,
            ),
            TempoInputField(),
          ],
        ),
      ),
    );
  }
}
