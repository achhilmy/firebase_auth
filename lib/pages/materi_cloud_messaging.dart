import 'package:firebase_authentication/helper/fcm_helper.dart';
import 'package:firebase_authentication/helper/notification_helper.dart';
import 'package:flutter/material.dart';

class MateriCloudMessaging extends StatelessWidget {
  const MateriCloudMessaging({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cloud Messaging"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ValueListenableBuilder(
          valueListenable: NotificationHelper.payload,
          builder: (context, value, child) {
            ///actual data
            final valueJson = FcmHelper.tryDecode(value);
            print(valueJson);
            return Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      "Notification title : ${valueJson['title']}",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Notif Content: ${valueJson['body']}",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
