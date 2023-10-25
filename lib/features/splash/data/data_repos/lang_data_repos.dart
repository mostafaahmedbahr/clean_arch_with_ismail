 import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/core/errors/exception.dart';
import 'package:clean_arch_with_ismail/features/splash/data/data_source/lang_lacal_data_source.dart';
 import 'package:clean_arch_with_ismail/features/splash/domain/repos/base_lang_repos.dart';
import 'package:dartz/dartz.dart';

class LangDataReposImpl extends BaseLangRepos{

  final BaseLangLocalDataSource baseLangLocalDataSource;

  LangDataReposImpl({required this.baseLangLocalDataSource});

  @override
  Future<Either<Errors, bool>> changeLanguage({required String langCode}) async{
    try{
      return Right(await baseLangLocalDataSource.changeLanguage(langCode: langCode));
    }on CashedException{
      return Left(CachedError());
    }

  }

  @override
  Future<Either<Errors, String>> getSavedLanguage()async {
    try{
      return Right(await baseLangLocalDataSource.getSavedLanguage());
    }on CashedException{
    return Left(CachedError());
    }
  }



}