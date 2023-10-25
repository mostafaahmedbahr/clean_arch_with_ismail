import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/features/splash/domain/entites/lang_entity.dart';
import 'package:dartz/dartz.dart';

abstract class LangRepos{

  Future<Either<Errors , bool>>changeLanguage();
  Future<Either<Errors , LangEntity>>getSavedLanguage();


}