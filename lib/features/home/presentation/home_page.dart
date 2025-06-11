import 'package:flutter/material.dart';
import 'package:guesstoget/features/home/widgets/slider_section_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String route = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Guess It",style: Theme.of(context).textTheme.headlineLarge?.copyWith(
              letterSpacing: 2,
              color: Theme.of(context).colorScheme.primary,

            ),),
            SizedBox(height: 10,),
            Text("By keshav agarwal",style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.w400,
              letterSpacing: 2,
            ),),
            SizedBox(height: 16,),
            Text("Choose Your Game Settings",style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize:20,
            ),),
            SizedBox(height: 32,),
            SliderSectionWidget(title: "Word Length", value: 5, minValue: 3, maxValue: 7, onChanged: (value){}),



          ],
        ),
      )),
    );
  }
}
