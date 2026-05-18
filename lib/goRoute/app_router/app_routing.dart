import 'package:go_router/go_router.dart';
import 'package:widgets/goRoute/home_screen.dart';
import 'package:widgets/goRoute/screenfour.dart';
import 'package:widgets/goRoute/screenone.dart';
import 'package:widgets/goRoute/screenthree.dart';
import 'package:widgets/goRoute/screentwo.dart';

class AppRouting {
  static final GoRouter router =
      GoRouter(debugLogDiagnostics: true, initialLocation: '/', routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/screenone',
      builder: (context, state) => const Screenone(),
    ),
    GoRoute(
        path: '/screenTwo/:title', // set title as a parameter (single )
        builder: (context, state) {
          final title =
              state.pathParameters['title']; // get the title parameter
          return Screentwo(title: title!); // pass the title to Screentwo
        }),
    GoRoute(
      path: '/screenthree/:id/:name/:salary',
      builder: (context, state) {
        // passing multiple parameters
        final id = int.parse(state.pathParameters['id']!);
        final name = state.pathParameters['name']!;
        final salary = double.parse(state.pathParameters['salary']!);
        return Screenthree(
          id: id,
          name: name,
          salary: salary,
        );
      },
      // nested routes
      routes: [
        GoRoute(
          path: 'screenfour',
          builder: (context, state) {
            final id = int.parse(state.pathParameters['id']!);
            final name = state.pathParameters['name']!;
            final salary = double.parse(state.pathParameters['salary']!);
            return Screenfour(
              id: id,
              name: name,
              salary: salary,
            );
          },
        ),
      ],
    ),
  ]);
}
