import 'package:dio/dio.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/model/either.dart';
import '../../domain/game_repository.dart';
import '../datasource/game_remote_datasource.dart';

class GameRepositoryImpl implements GameRepository{
  final GameRemoteDatasource gameRemoteDatasource;

  GameRepositoryImpl({required this.gameRemoteDatasource});

  @override
  Future<Either<Failure, void>> checkWord(String word) async {
    try{
      var result = await gameRemoteDatasource.checkWord(word);
      return Right(null);
    }
    on DioException {
      return Left(GameFailure(message: 'Please, enter correct word'));
    }
    catch (e){
      return Left(GameFailure(message: 'Please, enter correct word'));
    }
  }

  @override
  Future<Either<Failure, String>> getRandomWord(int length) async {
    try{
      var result = await gameRemoteDatasource.getRandomWord(length);
      try{
        await gameRemoteDatasource.checkWord(result);
      }
      catch (e){
        return getRandomWord(length);
      }
      return Right(result);
    }
    catch (e){
      return Left(GameFailure(message: 'Error'));
    }
  }
}