import 'package:clean_arch_with_ismail/core/errors/errors.dart';
 import 'package:dartz/dartz.dart';

abstract class BaseLangRepos{


  Future<Either<Errors, bool>> changeLanguage({required String langCode});
  Future<Either<Errors , String>>getSavedLanguage();


}