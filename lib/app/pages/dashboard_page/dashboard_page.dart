import "package:auto_route/annotations.dart";
import "package:bandobast/app/common_widgets/app_error_text_widget.dart";
import "package:bandobast/app/common_widgets/app_progress_indicator.dart";
import "package:bandobast/app/pages/dashboard_page/cubit/get_profile_cubit.dart";
import "package:bandobast/app/pages/dashboard_page/cubit/get_profile_state.dart";
import "package:bandobast/app/pages/login_page/cubit/login_cubit.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../injectable/injectable.dart";
import "../../common_widgets/app_scaffold.dart";
import "widget/dashboard_page_body.dart";

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => AppScaffold(
        canGoBack: false,
        showAppBar: false,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<LoginCubit>()),
            BlocProvider(
                create: (_) => getIt<GetProfileCubit>()..getUserProfile()),
          ],
          child: BlocBuilder<GetProfileCubit, GetProfileState>(
            builder: (context, GetProfileState state) {
              return state.when(
                loading: () => const Center(
                  child: AppProgressIndicator(),
                ),
                error: (error) => const AppErrorTextWidget(
                  title: 'Something went wrong',
                ),
                success: (userProfile) {
                  return DashboardPageBody(profile: userProfile);
                },
              );
            },
          ),
        ),
      );
}
