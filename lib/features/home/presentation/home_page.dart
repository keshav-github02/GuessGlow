import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guesstoget/features/game/presentation/page/game_page.dart';
import 'package:guesstoget/features/home/widgets/slider_section_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const String route = '/';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double wordLength = 4;
  double attemptCount = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Guess It",
              style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    letterSpacing: 2,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "By keshav agarwal",
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                  ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Choose Your Game Settings",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    fontSize: 20,
                  ),
            ),
            SizedBox(
              height: 32,
            ),
            SliderSectionWidget(
                title: "Word Length",
                value: wordLength,
                divisions: 3,
                minValue: 4,
                maxValue: 7,
                onChanged: (value) {
                  setState(() {
                    wordLength = value;
                  });
                }),
            SizedBox(
              height: 32,
            ),
            SliderSectionWidget(
                title: "Attempts Count",
                value: attemptCount,
                divisions: 4,
                minValue: 3,
                maxValue: 7,
                onChanged: (value) {
                  setState(() {
                    attemptCount = value;
                  });
                }),
            Spacer(),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(onPressed: ( ) {
                context.push(
                  GamePage.route(attemptsCount: attemptCount.toInt(), wordLength: wordLength.toInt())
                );
              },style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 18),
                backgroundColor: Theme.of(context).colorScheme.primary,
                foregroundColor: Theme.of(context).colorScheme.onSurface,
                elevation: 5,
                shadowColor: Color.fromRGBO(0, 0, 0, 0.3),

              ) ,
                  child: Text("Start Game",style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),)),
            ),
          ],
        ),
      )),
    );
  }
}
