import 'package:flutter/material.dart';

abstract class AppSnackBar {
  factory AppSnackBar.errorSnackBar(String snackBarMessage) {
    return ErrorSnackBar(snackBarMessage);
  }

  factory AppSnackBar.successSnackBar(String snackBarMessage) {
    return SuccessSnackBar(snackBarMessage);
  }

  SnackBar get toSnackBar;
}

class ErrorSnackBar implements AppSnackBar {
  final String snackBarMessage;

  ErrorSnackBar(this.snackBarMessage);

  @override
  SnackBar get toSnackBar => SnackBar(
        content: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.close, color: Colors.white),
            const SizedBox(width: 20),
            Text(snackBarMessage),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.redAccent,
      );
}

class SuccessSnackBar implements AppSnackBar {
  final String snackBarMessage;

  SuccessSnackBar(this.snackBarMessage);

  @override
  SnackBar get toSnackBar => SnackBar(
        content: Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.white),
            const SizedBox(width: 20),
            Expanded(
              child: Text(snackBarMessage),
            ),
          ],
        ),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        backgroundColor: Colors.green,
      );
}
