 import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';

import '../app_sources/app_colors.dart';



class NewToast
 {

   static showNewSuccessToast({
     required String msg,
     required BuildContext context,
   }) =>
       CherryToast.success(
         width: MediaQuery.of(context).size.width*0.8,
         title:  Text(msg, style:   TextStyle(color: AppColors.black)),
       ).show(context);


   static showNewErrorToast({
     required String msg,
     required BuildContext context,
   }) =>
       CherryToast.error(
         width: MediaQuery.of(context).size.width*0.8,
         title:  Text(msg, style:   TextStyle(color: AppColors.black)),
       ).show(context);
 }

