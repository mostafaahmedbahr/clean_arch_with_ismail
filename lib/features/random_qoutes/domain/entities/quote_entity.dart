import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String content;
  final String autherName;
  final String date;
  final int id;

  const QuoteEntity({required this.content,
    required this.autherName,
    required this.date,
    required this.id});

  @override
  List<Object> get props => [content, autherName, date, id];
}
