import 'package:bookly_app/Core/helper/snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customlaunchUrl({
  required context,
  required String url,
}) async {
  try {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      showErrorSnackBar(context, 'Could not launch $url');
    }
  } catch (e) {
    showErrorSnackBar(context, 'Error launching URL: ${e.toString()}');
  }
}
