import 'package:clean_arch_with_ismail/features/random_qoutes/domain/entities/quote_entity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors.dart';

abstract class BaseQuotesRepos{

  Future<Either< Errors,  QuoteEntity>> fetchAllQuotes();

}