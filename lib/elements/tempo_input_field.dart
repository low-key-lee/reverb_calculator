import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reverb_calculator_2/models/data.dart';

class TempoInputField extends StatelessWidget {
  final TextStyle tempoStyle = TextStyle(
    fontSize: 48,
    fontWeight: FontWeight.w900,
  );

  @override
  Widget build(BuildContext context) {
    final data = context.watch<Data>();
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white12),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                style: tempoStyle,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  hintText: data.tempo.toString(),
                ),
                onChanged: (String newTempo) {
                  data.updateTempo(int.parse(newTempo));
                },
              ),
              Text('Tempo')
            ],
          ),
        ),
      ),
    );
  }
}
