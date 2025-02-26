import 'package:bookly_app/Features/Home/presentation/view/book_details_view.dart';
import 'package:bookly_app/Features/Home/presentation/view/home_view.dart';
import 'package:bookly_app/Features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splashView = '/';
  static const String homeView = '/homeView';
  static const String bookDetailsView = '/bookDetailsView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashView,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) => BookDetailsView(),
      ),
    ],
  );
}
