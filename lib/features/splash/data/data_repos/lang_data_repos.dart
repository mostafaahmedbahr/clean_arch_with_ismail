 import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/core/errors/exception.dart';
import 'package:clean_arch_with_ismail/features/splash/data/data_source/lang_lacal_data_source.dart';
import 'package:clean_arch_with_ismail/features/splash/domain/entites/lang_entity.dart';
import 'package:clean_arch_with_ismail/features/splash/domain/repos/base_lang_repos.dart';
import 'package:dartz/dartz.dart';

class LangDataReposImpl extends BaseLangRepos{

  final BaseLangLocalDataSource baseLangLocalDataSource;

  LangDataReposImpl({required this.baseLangLocalDataSource});

  @override
  Future<Either<Errors, LangEntity>> changeLanguage({required String langCode}) async {
    try{
      var  result = await baseLangLocalDataSource.changeLanguage(langCode: langCode);
      return right(result as LangEntity);
    }
    on CashedException catch(error)
    {
      print(error.toString());
      return Left(NetworkError());
    }
  }

  @override
  Future<Either<Errors, LangEntity>> getSavedLanguage() {
    // TODO: implement getSavedLanguage
    throw UnimplementedError();
  }
}