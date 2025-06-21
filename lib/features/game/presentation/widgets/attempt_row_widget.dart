import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guesstoget/core/theme/app_colors.dart';
import 'package:guesstoget/features/game/presentation/widgets/letter_box_widget.dart';

import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';

class AttemptRowWidget extends StatelessWidget {
  final int attemptIndex;
  const AttemptRowWidget({super.key, required this.attemptIndex});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        final word = state.word ?? '';
        final previousAttempts = state.attempts ?? [];
        final currentAttempt = state.currentAttempt ?? '';
        final isCurrentAttempt = attemptIndex == previousAttempts.length;
        return Row(
          children: List.generate(word.length, (letterIndex) {
            var text=_getLetter(letterIndex, attemptIndex, previousAttempts, currentAttempt, isCurrentAttempt);
            return Expanded(
                child: LetterBoxWidget(
              text: text,
              boxColor: AppColors.green,
              textColor: AppColors.surface,
            ));
          }),
        );
      },
    );
  }

  String _getLetter(int letterIndex, int attemptIndex, List<String> previousAttempts,String currentAttempt,bool isCurrentAttempt){
    if(attemptIndex < previousAttempts.length){
      return previousAttempts[attemptIndex][letterIndex];
    }
    else if(isCurrentAttempt){
      return letterIndex<currentAttempt.length ? currentAttempt[letterIndex]:' ';
    }
    return ' ';
  }
}
