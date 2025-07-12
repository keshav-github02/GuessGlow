import 'package:flutter/material.dart';

class SliderSectionWidget extends StatelessWidget {
  final String title;
  final double value;
  final double minValue;

  final double maxValue;
  final int divisions;
  final ValueChanged<double> onChanged;

  const SliderSectionWidget(
      {super.key,
      required this.title,
      required this.value,
      required this.minValue,
      required this.maxValue,
      required this.onChanged, required this.divisions});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          blurRadius: 9,
          spreadRadius: 4,
        )]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
          ),
          SizedBox(
            height: 12,
          ),
          Slider(value: value, onChanged: onChanged,max: maxValue,divisions: divisions,min: minValue,label: value.toStringAsFixed(0),activeColor: Theme.of(context).colorScheme.primary,
          inactiveColor:Theme.of(context).colorScheme.onSurface ,),
          SizedBox(
            height: 12,
          ),
          Text('Value : ${value.toInt()}',style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),),


        ],
      ),
    );
  }
}
