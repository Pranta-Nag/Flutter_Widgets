📥 Import Package
import 'package:go_router/go_router.dart';
🧱 Create Screens

Example screens:

HomeScreen
ScreenOne
ScreenTwo
🗺️ Define Routes

Create a router file and define routes:

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/screenone',
      builder: (context, state) => ScreenOne(),
    ),
  ],
);
🧩 Use in MaterialApp

Replace MaterialApp with MaterialApp.router:

MaterialApp.router(
  routerConfig: router,
);
🔄 Navigation Examples
➤ Push to new screen
context.push('/screenone');
➤ Replace current screen
context.go('/');
▶️ Run the App

After setup, run your Flutter app:

flutter run
🎯 Summary

GoRouter makes Flutter navigation more organized, scalable, and production-ready. It is especially useful for large applications that require structured routing and deep linking support.