import 'package:admin_dashboard/pages/analytics/analytics_page.dart';
import 'package:admin_dashboard/pages/home/details_page.dart';
import 'package:admin_dashboard/pages/home/home_page.dart';
import 'package:admin_dashboard/pages/images/images_page.dart';
import 'package:admin_dashboard/pages/login/login_page.dart';
import 'package:admin_dashboard/pages/profile/profile_page.dart';
import 'package:admin_dashboard/pages/products/products_page.dart';
import 'package:admin_dashboard/pages/settings/settings_page.dart';
import 'package:admin_dashboard/pages/users/users_page.dart';
import 'package:admin_dashboard/utils/title_manager.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final GoRouter _router;
  AppRouter()
      : _router = GoRouter(routes: [
          GoRoute(
              path: '/', name: 'home', builder: (context, state) => HomePage()),
          GoRoute(
            path: '/login',
            name: 'login',
            builder: (context, state) => LoginPage(),
          ),
          GoRoute(
            path: '/details/:id',
            name: 'details',
            builder: (context, state) {
              final id = state.pathParameters['id'];
              return DetailsPage(id: id);
            },
            redirect: (context, state) {
              TitleManager.updateTitle('/details');
              return null;
            },
          ),
          GoRoute(
            path: '/profile',
            name: 'profile',
            builder: (context, state) => ProfilePage(),
            redirect: (context, state) {
              // 检查用户登录状态，假设用户未登录则跳转到登录页面
              final isLoggedIn = false; // 模拟的登录状态
              return isLoggedIn ? null : '/login';
            },
          ),
          GoRoute(
            path: '/analytics',
            name: 'analytics',
            builder: (context, state) => const AnalyticsPage(),
            redirect: (context, state) {
              TitleManager.updateTitle('/analytics');
              return null;
            },
          ),
          GoRoute(
            path: '/users',
            name: 'users',
            builder: (context, state) => const UsersPage(),
            redirect: (context, state) {
              TitleManager.updateTitle('/users');
              return null;
            },
          ),
          GoRoute(
            path: '/products',
            name: 'products',
            builder: (context, state) => const ProductsPage(),
            redirect: (context, state) {
              TitleManager.updateTitle('/products');
              return null;
            },
          ),
          GoRoute(
            path: '/settings',
            name: 'settings',
            builder: (context, state) => const SettingsPage(),
            redirect: (context, state) {
              TitleManager.updateTitle('/settings');
              return null;
            },
          ),
          GoRoute(
            path: '/images',
            name: 'images',
            builder: (context, state) => const ImagesPage(),
            redirect: (context, state) {
              TitleManager.updateTitle('/images');
              return null;
            },
          ),
        ]);

  GoRouter get router => _router;
}
