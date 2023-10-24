import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_colors.dart';
import 'package:clean_arch_with_ismail/core/utiles/media_query.dart';
import 'package:clean_arch_with_ismail/features/random_qoutes/presentation/controller/quotes_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuoteContentWidget extends StatelessWidget {
  const QuoteContentWidget({Key? key, required this.content, required this.autherName}) : super(key: key);

  final String content;
  final String autherName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      width: context.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.primary,
      ),
      child: Column(
        children: [
          Text(content,
            style: TextStyle(
              fontSize: 18,
              color: AppColors.white,
            ),),
          const SizedBox(height: 20,),
          Text(autherName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),),
        ],
      ),
    );
  }
}
