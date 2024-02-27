import 'package:firebase_authentication/firebase_services/news_services.dart';
import 'package:flutter/material.dart';

class CodeGeneration extends StatelessWidget {
  const CodeGeneration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Code Generation"),
      ),
      body: Center(
        child: FutureBuilder(
          future: NewsApiServices().topHealine(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final data = snapshot.data?.articles ?? [];

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: ((context, index) {
                  final item = data[index];
                  return ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        item.urlToImage,
                        width: 100,
                        errorBuilder: (context, child, stackTrace) {
                          return Container(
                            width: 100,
                            color: Colors.grey,
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          return loadingWidget(child, loadingProgress);
                        },
                      ),
                    ),
                    title: Text(
                      item.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  );
                }),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  Widget loadingWidget(Widget child, ImageChunkEvent? loadingProgress) {
    final loadingValue = (loadingProgress?.cumulativeBytesLoaded ?? 0);
    final expectedValue = (loadingProgress?.expectedTotalBytes ?? 0);

    if (loadingValue < expectedValue) {
      return SizedBox(
        width: 100,
        child: Center(
          child: CircularProgressIndicator(
            value: loadingValue / expectedValue,
          ),
        ),
      );
    }
    return child;
  }
}
