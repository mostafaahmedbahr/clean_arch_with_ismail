import 'package:dartz/dartz.dart';

import '../errors/errors.dart';


abstract class UseCaseWithParam<Type , Param>
{
  Future<Either< Errors, Type>> call(Param param);
}