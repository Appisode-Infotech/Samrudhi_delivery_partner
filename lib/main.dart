import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:samruddhi_delivery_partner/splash/view/splash_screen.dart';
import 'package:samruddhi_delivery_partner/utils/app_colors.dart';
import 'package:samruddhi_delivery_partner/utils/routes.dart';

import 'auth/view/login_screen.dart';
import 'auth/view/otp_screen.dart';
import 'auth/view/web_view_screen.dart';
import 'dashboard/dashboard_screen.dart';
import 'dashboard/orders/view/view_order_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: AppColors.primaryColor,
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.scaffoldBackground,
        ),
        title: 'Samruddhi Delivery Partner',
        initialRoute: Routes.splashRoute,
        routes: {
          Routes.splashRoute: (context) => const SplashScreen(),
          Routes.loginRoute: (context) => const LoginScreen(),
          Routes.otpScreenRoute: (context) => const OtpScreen(),
          Routes.dashboardRoute: (context) => const DashboardScreen(),
          Routes.viewOrderDetailRoute: (context) => const ViewOrderDetail(),
          Routes.webViewRoute: (context) => const WebViewScreen(),
        }
    );
  }
}
