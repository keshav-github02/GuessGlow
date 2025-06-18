import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guesstoget/features/game/presentation/bloc/game_bloc.dart';
import 'package:guesstoget/features/game/presentation/widgets/attempts_widget.dart';

import '../../../../core/get_it/get_it.dart';

class GamePage extends StatelessWidget {
  final int attemptsCount;
  final int wordLength;

  const GamePage(
      {super.key, required this.attemptsCount, required this.wordLength});
  static String route({required int wordLength, required int attemptsCount}) =>
      Uri(path: '/game', queryParameters: {
        'attemptsCount': attemptsCount.toString(),
        'wordLength': wordLength.toString()
      }).toString();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => getIt<GameBloc>(),
  child: Scaffold(
      appBar: AppBar(
        title: Text('Game',style: Theme.of(context).textTheme.headlineMedium,),
      ) ,
      body: Column(
        children: [
          SizedBox(
            height: 20,

          ),
          AttemptsWidget(),
        ],
      ),
    ),
);
  }
}
