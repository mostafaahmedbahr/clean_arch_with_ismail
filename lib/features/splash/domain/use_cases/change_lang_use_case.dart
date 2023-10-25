import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/core/use_cases/use_case_with_param.dart';
import 'package:clean_arch_with_ismail/features/splash/domain/repos/base_lang_repos.dart';
import 'package:dartz/dartz.dart';


class ChangeLangUseCase extends UseCaseWithParam{

  final BaseLangRepos baseLangRepos;

  ChangeLangUseCase({required this.baseLangRepos});

  @override
  Future<Either<Errors, bool>> call(param) async{
    return await baseLangRepos.changeLanguage( langCode: param);
  }
}