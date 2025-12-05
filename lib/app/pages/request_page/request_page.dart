import "package:bandobast/app/pages/request_page/widget/request_page_body.dart";
import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";

import "../../common_widgets/app_scaffold.dart";

class RequestPage extends HookWidget {
  const RequestPage({super.key});

  @override
  Widget build(BuildContext context) => const AppScaffold(
        canGoBack: false,
        title: Text('Requests'),
        body: RequestPageBody(),
      );
}
