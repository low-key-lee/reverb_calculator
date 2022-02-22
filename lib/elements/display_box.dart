import 'package:flutter/material.dart';

class DisplayBox extends StatelessWidget {
  final String label;
  final double value;
  final Widget selector;

  DisplayBox({
    this.label,
    this.value,
    this.selector,
  });

  @override
  Widget build(BuildContext context) {
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
          width: 100,
          height: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(value.toStringAsFixed(2) + ' ms'),
              selector,
            ],
          ),
        ),
      ),
    );
  }
}
