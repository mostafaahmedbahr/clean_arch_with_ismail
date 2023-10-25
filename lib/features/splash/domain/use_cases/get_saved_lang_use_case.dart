import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/core/use_cases/use_case_with_no_param.dart';
 import 'package:dartz/dartz.dart';

import '../repos/base_lang_repos.dart';


class GetSavedLangUseCase extends UseCaseWithNoParam{

  final BaseLangRepos baseLangRepos;

  GetSavedLangUseCase({required this.baseLangRepos});
  @override
  Future<Either<Errors, String>> call() async{
    return await baseLangRepos.getSavedLanguage();
  }
}