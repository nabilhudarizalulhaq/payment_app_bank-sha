import 'package:another_flushbar/flushbar.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

void showCustomSnackbar(BuildContext context, String message) {
    Flushbar(
      padding: const EdgeInsets.all(24),
      message: message,
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: redColor,
      duration: const Duration(seconds: 3),
    
    ).show(context);
    }

    String formatCurrency(
      num number, {
      String symbol = 'Rp ',
    }) {
      return NumberFormat.currency(
        locale: 'id',
        symbol: symbol,
        decimalDigits: 0,
      ).format(number);
    }

    Future<XFile?> selectImage() async {
      XFile? selectedImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      return selectedImage;
    }
