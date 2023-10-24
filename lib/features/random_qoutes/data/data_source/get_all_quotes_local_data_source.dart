import 'package:clean_arch_with_ismail/features/random_qoutes/data/models/quote_model.dart';


abstract class BaseAllQuotesLocalDataSource {

  QuoteModel fetchAllQuotesInLocalDataSource();

}


class AllQuotesLocalDataSourceImplementation extends BaseAllQuotesLocalDataSource{
  @override
  QuoteModel fetchAllQuotesInLocalDataSource() {
    // TODO: implement fetchAllQuotesInLocalDataSource
    throw UnimplementedError();
  }
}