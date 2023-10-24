import 'package:clean_arch_with_ismail/core/errors/errors.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/data/data_source/get_all_quotes_remote_data_source.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/domain/entities/quote_entity.dart';
 import 'package:clean_arch_with_ismail/features/random_qoutes/domain/repos/quotes_repos.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/exception.dart';
import '../data_source/get_all_quotes_local_data_source.dart';
import '../models/quote_model.dart';

class QuoteDataRepoImpl extends BaseQuotesRepos{

  final BaseAllQuotesRemoteDataSource baseAllQuotesRemoteDataSource;
  final BaseAllQuotesLocalDataSource baseAllQuotesLocalDataSource;

  QuoteDataRepoImpl({required this.baseAllQuotesRemoteDataSource , required this.baseAllQuotesLocalDataSource});

  @override
  Future<Either<Errors, QuoteEntity>> fetchAllQuotes()  async {
    try{
      var  result = await baseAllQuotesRemoteDataSource.fetchAllQuotes();
      return Right(result);
    }
    on ServerException
    //catch(error)
    {
      return Left(NetworkError());
    }

  }
}