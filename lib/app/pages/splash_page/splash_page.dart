import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/pages/splash_page/widget/splash_page_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/app_scaffold.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      canGoBack: false,
      body: SplashPageBody(),
    );
  }
}
