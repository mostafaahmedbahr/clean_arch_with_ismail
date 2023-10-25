import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/core/use_cases/use_case_with_no_param.dart';
 import 'package:dartz/dartz.dart';


class GetSavedLangUseCase extends UseCaseWithNoParam{
  @override
  Future<Either<Errors, String>> call() {
    // TODO: implement call
    throw UnimplementedError();
  }
}