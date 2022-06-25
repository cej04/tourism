// import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'dart:io';

class MapUtils {
  MapUtils._();

  static Future<void> openMap(
    double Latitude,
    double Longitude,
  ) async {
    try {
      final result = await InternetAddress.lookup('india.gov.in');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        String googleMapUrl =
            "https://www.google.com/maps/search/?api=1&query=$Latitude,$Longitude";
        if (await canLaunchUrlString(googleMapUrl)) {
          await launchUrlString(googleMapUrl);
        } else {
          throw 'Could not open the Map';
        }
      }
    } on SocketException catch (_) {
      throw 'No internet available';
    }
  }
}
