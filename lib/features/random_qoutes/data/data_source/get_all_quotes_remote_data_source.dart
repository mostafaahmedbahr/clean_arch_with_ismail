import 'dart:convert';

import 'package:clean_arch_with_ismail/core/api/end_point.dart';
import 'package:clean_arch_with_ismail/core/errors/exception.dart';

import '../models/quote_model.dart';
import 'package:http/http.dart' as http;

abstract class BaseAllQuotesRemoteDataSource {
  Future<QuoteModel> fetchAllQuotes();
}

class AllQuotesRemoteDataSourceImplementation extends BaseAllQuotesRemoteDataSource {
  @override
  Future<QuoteModel> fetchAllQuotes() async {
    var response = await http.get(
        Uri.parse(EndPoint.getQuoteUrl),
        headers: {
          "Content-Type" : "application/json",
        },
    );
    if (response.statusCode == 200) {
      print("BaseAllQuotesRemoteDataSource");
      return QuoteModel.fromJson(json.decode(response.body));
    } else {
      print("BaseAllQuotesRemoteDataSource");
      return throw (ServerException());
    }
  }
}
