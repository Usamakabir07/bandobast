import "package:bandobast/app/pages/home_page/cubit/create_user_request_cubit.dart";
import "package:bandobast/app/pages/home_page/widget/home_page_body.dart";
import "package:bandobast/injectable/injectable.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../common_widgets/app_scaffold.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      canGoBack: false,
      showAppBar: false,
      body: BlocProvider(
        create: (_) => getIt<CreateUserRequestCubit>(),
        child: const HomePageBody(),
      ),
    );
  }
}
