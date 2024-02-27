import 'package:firebase_authentication/pages/code_generation_page.dart';
import 'package:firebase_authentication/pages/materi_auth.dart';
import 'package:firebase_authentication/pages/materi_cloud_messaging.dart';
import 'package:firebase_authentication/pages/materi_firestore.dart';
import 'package:firebase_authentication/pages/materi_storage.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  /// -- START of Singleton Code -- ///

  /// Buat Singleton agar Router dapat diakses dari mana saja.
  static final AppRouter shared = AppRouter._internal();

  /// Setiap kali kita membuat instance [AppRouter]
  /// Maka instance yang sama akan dikembalikan. (Tidak membuat instance baru)
  factory AppRouter() {
    return shared;
  }

  AppRouter._internal();

  /// -- END of Singleton Code -- ///

  /// Deklarasikan [GoRouter] di sini.
  final router = GoRouter(
    /// Kita masukkan routes atau halaman kita.
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const CodeGeneration(),
      ),

      /// Main Page
      // ShellRoute(
      //   builder: (context, state, child) => const MainPage(),
      //   routes: [
      //     /// Home Page
      //     GoRoute(
      //       path: '/',
      //       builder: (context, state) => const Materi3rdParty(),
      //     ),

      //     /// Account Page
      //     GoRoute(
      //       path: '/account-page',
      //       builder: (context, state) => const AccountPage(),
      //     ),

      //     /// Setting Page
      //     GoRoute(
      //       path: '/setting-page',
      //       builder: (context, state) => const SettingPage(),
      //     ),
      //   ],
      // ),

      /// Second Page
      // GoRoute(
      //   path: '/second-page',
      //   builder: (context, state) => SecondPage(
      //     params: state.uri.queryParameters,
      //   ),
      // ),
    ],
  );
}
