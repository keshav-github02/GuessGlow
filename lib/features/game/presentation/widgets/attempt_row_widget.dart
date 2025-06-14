import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';

class AttemptRowWidget extends StatelessWidget {
  final int attemptIndex;
  const AttemptRowWidget({super.key, required this.attemptIndex});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        final word=state.word ?? '';
        final previousAttempts=state.attempts??[];
        final currentAttempt=state.currentAttempt??'';
        final isCurrentIndex=attemptIndex == previousAttempts.length;
        return Row(
          children:List.generate(word.length, (letterIndex){
            return Expanded(child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ));
          }),
        );
      },
    );
  }
}
