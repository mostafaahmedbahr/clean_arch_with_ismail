import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants
{

  

  static void showErrorDialog({
  required String message,
  required BuildContext context,
})
  {
    showDialog(context: context, builder: (context){
      return CupertinoAlertDialog(
        title: Text(message),
        actions: [
          TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Text("ok"),
          ),
        ],
      );
    });
  }


}