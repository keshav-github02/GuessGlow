

import '../../../core/failure/failure.dart';
import '../../../core/model/either.dart';

abstract class GameRepository{
  Future<Either<Failure,String>> getRandomWord(int length);
  Future<Either<Failure,void>> checkWord(String word);
}