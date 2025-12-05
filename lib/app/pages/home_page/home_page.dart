import "package:bandobast/app/pages/home_page/widget/home_page_body.dart";
import "package:flutter/material.dart";

import "../../common_widgets/app_scaffold.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) => const AppScaffold(
        canGoBack: false,
        showAppBar: false,
        body: HomePageBody(),
      );
}
