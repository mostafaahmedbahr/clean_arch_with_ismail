 import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/core/use_cases/use_case_with_no_param.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/domain/entities/quote_entity.dart';
 import 'package:dartz/dartz.dart';

import '../repos/quotes_repos.dart';

class FetchAllQuotesUseCase extends UseCaseWithNoParam<QuoteEntity>{

  final QuotesRepos quotesRepos;

  FetchAllQuotesUseCase({required this.quotesRepos});

  @override
  Future<Either<Errors, QuoteEntity>> call() async{
    return await quotesRepos.fetchAllQuotes();
  }
}