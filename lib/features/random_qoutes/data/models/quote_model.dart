import 'package:clean_arch_with_ismail/features/random_qoutes/domain/entities/quote_entity.dart';

class QuoteModel extends QuoteEntity {
  const QuoteModel(
      {required super.content,
      required super.autherName,
      required super.date,
      });

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
      content: json['content'],
      autherName: json['author'],
      date: json['dateAdded'],

  );
}
