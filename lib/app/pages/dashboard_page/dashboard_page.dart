import "package:auto_route/annotations.dart";
import "package:bandobast/app/pages/dashboard_page/widget/dashboard_side_bar.dart";
import "package:bandobast/app/themes/app_colors.dart";
import "package:bandobast/app/themes/app_styles.dart";
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
        showAppBar: true,
        backgroundColor: Colors.white,
        drawer: const DashboardDrawer(),
        leadingIcon: Builder(
          builder: (context) => InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Icon(Icons.menu, color: Colors.black),
          ),
        ),
        title: Text(
          "Bandobast",
          textAlign: TextAlign.center,
          style: AppStyles.headLineSmallBold.copyWith(
            color: AppColors.seaGreen,
            fontWeight: FontWeight.w900,
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<GetPokemonsCubit>()),
            BlocProvider(create: (_) => getIt<SavedPokemonsCubit>()),
            BlocProvider(create: (_) => getIt<AuthCubit>()),
          ],
          child: const DashboardPageBody(),
        ),
      );
}
