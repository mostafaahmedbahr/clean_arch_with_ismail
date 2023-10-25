import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/core/use_cases/use_case_with_param.dart';
import 'package:dartz/dartz.dart';

import '../entites/lang_entity.dart';

class ChangeLangUseCase extends UseCaseWithParam{
  @override
  Future<Either<Errors, LangEntity>> call(param) {
    // TODO: implement call
    throw UnimplementedError();
  }
}