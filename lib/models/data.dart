import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  // List of pre delay values
  List<String> _preDelayValues = [
    '1/8 D',
    '1/8',
    '1/8 T',
    '1/16 D',
    '1/16',
    '1/16 T',
    '1/32 D',
    '1/32',
    '1/32 T',
    '1/64 D',
    '1/64',
    '1/64 T',
    '1/128',
    'None'
  ];

  List<String> get preDelayValues => _preDelayValues;

  // List of decay time values
  List<String> _decayTimeValues = [
    '4 bars',
    '2 bars',
    '1 bar',
    '1/2 D',
    '1/2',
    '1/2 T',
    '1/4 D',
    '1/4',
    '1/4 T',
    '1/8 D',
    '1/8',
    '1/8 T',
    '1/16 D',
    '1/16',
    '1/16 T',
  ];

  List<String> get decayTimeValues => _decayTimeValues;

  int _tempo = 120;
  int get tempo => _tempo;

  void updateTempo(int newTempo) {
    _tempo = newTempo;
    updatePreDelay();
    // updateDecayTime();
    // notifyListeners();
  }

  double _preDelay = 0.0;
  double get preDelay => _preDelay;

  void updatePreDelay() {
    _preDelay = (60 / _tempo) * 4 * _newPreDelayValue * 1000;
    updateDecayTime();
    notifyListeners();
  }

  double _newPreDelayValue = 0.0;
  double get newPreDelayValue => _newPreDelayValue;

  void updateNewPreDelayValue(newValue) {
    _newPreDelayValue = newValue;
    notifyListeners();
  }

  double _newDecayTimeValue = 1.0;
  double get newDecayTimeValue => _newDecayTimeValue;

  void updateNewDecayTimeValue(newValue) {
    _newDecayTimeValue = newValue;
    notifyListeners();
  }

  double _decayTime = 2000.0;
  double get decayTime => _decayTime;

  void updateDecayTime() {
    _decayTime = ((60 / _tempo) * 4 * _newDecayTimeValue * 1000) - _preDelay;

    notifyListeners();
  }
}
