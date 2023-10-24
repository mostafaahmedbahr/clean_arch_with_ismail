import 'package:equatable/equatable.dart';

class QuoteEntity extends Equatable {
  final String content;
  final String autherName;
  final String date;


  const QuoteEntity({required this.content,
    required this.autherName,
    required this.date,
     });

  @override
  List<Object> get props => [content, autherName, date,  ];
}
