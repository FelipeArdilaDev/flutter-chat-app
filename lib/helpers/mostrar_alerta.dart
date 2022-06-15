import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

mostararAlerta(BuildContext context, String titulo, String subTitulo) {
  if (!Platform.isAndroid) {
    return showDialog(
        context: context,
        builder: (_) => AlertDialog(
              title: Text(titulo),
              content: Text(subTitulo),
              actions: [
                MaterialButton(
                  child: Text('Ok'),
                  elevation: 5,
                  color: Colors.blue,
                  onPressed: () => Navigator.pop(context),
                )
              ],
            ));
  }

  showCupertinoDialog(
    context: context,
    builder: (_) => CupertinoAlertDialog(
      title: Text(titulo),
      content: Text(subTitulo),
      actions: [
        CupertinoDialogAction(
          child: Text('Ok'),
          isDefaultAction: true,
          onPressed: () => Navigator.pop(context),
        )
      ],
    ),
  );
}
