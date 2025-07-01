import 'package:get_it/get_it.dart';

import '../../features/game/data/datasource/game_remote_datasource.dart';
import '../../features/game/data/repository/game_repository_impl.dart';
import '../../features/game/domain/game_repository.dart';
import '../../features/game/presentation/bloc/game_bloc.dart';
import '../api/dio_client.dart';

var getIt = GetIt.instance;

void setup(){
  registerDatasources();
  registerRepositories();
  registerBloc();
}
void registerDatasources(){
  getIt.registerSingleton(GameRemoteDatasource(dio: DioClient.getDio()));
}
void registerRepositories(){
  getIt.registerSingleton<GameRepository>(GameRepositoryImpl(gameRemoteDatasource: getIt()));
}
void registerBloc(){
  getIt.registerFactory<GameBloc>(() => GameBloc(gameRepository: getIt()));
}