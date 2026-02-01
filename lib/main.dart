import 'package:bandobast/app/utils/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app/router/app_router.dart';
import 'app/utils/app_theme.dart';
import 'app/utils/hide_keyboard.dart';
import 'injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: AppConstants.env);
  await injectDependencies();
  await Supabase.initialize(
    url: dotenv.env[AppConstants.supabaseUrl]!,
    anonKey: dotenv.env[AppConstants.supabaseAnonKey]!,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return _globalUnfocusKeyboard(
      context: context,
      child: MaterialApp.router(
        title: 'Bandobast',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }

  Widget _globalUnfocusKeyboard({
    required BuildContext context,
    required Widget child,
  }) =>
      GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () => hideKeyboard(context),
        child: child,
      );
}
