import 'dart:convert';
import 'dart:math';

import 'package:firebase_authentication/helper/notification_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FcmHelper {
  Future<void> init() async {
    await FirebaseMessaging.instance.requestPermission();

    ///Get Token Fcm
    final FCMToken = await FirebaseMessaging.instance.getToken();
    debugPrint("FCM TOken: $FCMToken");

    //handle notification jika di tekna dari kondisi app ditutup
    FirebaseMessaging.instance.getInitialMessage().then(
      (value) {
        ///set payload pada Notification [Helper]
        NotificationHelper.payload.value = jsonEncode(
          {
            "title": value?.notification?.title,
            "body": value?.notification?.body,
            "data": value?.data
          },
        );
      },
    );

    ///handle notification jika di tekan dari kondisi minimize
    FirebaseMessaging.onMessageOpenedApp.listen((message) async {
      ///Data notifikasi
      RemoteNotification? notification = message.notification;
      AndroidNotification? android = message.notification?.android;

      ///jika notifikasi masuk dan platform android
      if (notification != null && android != null && !kIsWeb) {
        await NotificationHelper.flutterLocalNotificationsPlugin.show(
            Random().nextInt(99),
            notification.title,
            notification.body,
            payload: jsonEncode(
              {
                "title": notification.title,
                "body": notification.body,
                "data": message.data
              },
            ),
            NotificationHelper.notificationDetails);
      }
    });
  }

  ///try decode data
  static Map<String, dynamic> tryDecode(data) {
    try {
      return jsonDecode(data);
    } catch (e) {
      return {};
    }
  }
}
