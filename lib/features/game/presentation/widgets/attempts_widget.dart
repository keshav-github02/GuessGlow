import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:guesstoget/features/game/presentation/widgets/attempt_row_widget.dart';

import '../bloc/game_bloc.dart';
import '../bloc/game_state.dart';

class AttemptsWidget extends StatelessWidget {
  const AttemptsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameBloc, GameState>(
      builder: (context, state) {
        return ListView.separated(itemBuilder: (context, index) {
          AttemptRowWidget(attemptIndex: index);
        }, separatorBuilder: (context, index) {
          return SizedBox(height: 10,);
        }, itemCount: 10);
      },
    );
  }
}
