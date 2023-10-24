import 'package:clean_arch_with_ismail/core/utiles/app_sources/app_colors.dart';
import 'package:clean_arch_with_ismail/core/utiles/media_query.dart';
import 'package:flutter/cupertino.dart';

class QuoteContentWidget extends StatelessWidget {
  const QuoteContentWidget({Key? key}) : super(key: key);

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
          Text("m"*100,
          style: TextStyle(
            fontSize: 18,
            color: AppColors.white,
          ),),
          const SizedBox(height: 20,),
          Text("mostafa",
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
