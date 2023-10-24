import 'package:dartz/dartz.dart';

 import '../errors/errors.dart';

abstract class UseCaseWithNoParam<Type>
{
  Future<Either< Errors, Type>> call();
}