import "package:auto_route/annotations.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../injectable/injectable.dart";
import "../../common_widgets/app_scaffold.dart";
import "../login_page/cubit/auth_cubit.dart";
import "../pokemons_page/cubit/get_pokemon_cubit.dart";
import "../pokemons_page/sub_pages/pokemon_detail_page/cubit/save_pokemons_cubit.dart";
import "widget/dashboard_page_body.dart" show DashboardPageBody;

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) => AppScaffold(
        canGoBack: false,
        showAppBar: false,
        backgroundColor: AppColors.white,
        body: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<GetPokemonsCubit>()),
            BlocProvider(create: (_) => getIt<SavedPokemonsCubit>()),
            BlocProvider(create: (_) => getIt<AuthCubit>()),
          ],
          child: Builder(
            builder: (context) {
              return const DashboardPageBody();
            },
          ),
        ),
      );
}
