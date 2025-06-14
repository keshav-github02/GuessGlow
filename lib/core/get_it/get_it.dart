import 'package:get_it/get_it.dart';
import 'package:guesstoget/features/game/presentation/bloc/game_bloc.dart';

var getIt= GetIt.instance();

void setup(){

registerBloc();
}


void registerBloc(){
  getIt.registerFactory<GameBloc>(()=>GameBloc(gameRepository: null));
}