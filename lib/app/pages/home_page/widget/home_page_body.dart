import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/pages/home_page/widget/services_section.dart';
import 'package:bandobast/app/router/app_router.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../utils/dimensions.dart';
import '../sub_pages/last_order_page/last_order_page.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(padding12),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(borderRadius20),
              bottomRight: Radius.circular(borderRadius20),
            ),
            gradient: LinearGradient(
              colors: [
                AppColors.seaGreen,
                AppColors.blueGreyDark,
              ],
              end: Alignment.topCenter,
              begin: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Karo Bandobast!',
                    style: AppStyles.titleSmallBold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.support_agent,
                        color: AppColors.white,
                        size: iconSize32,
                      ),
                      Container(
                        height: height30,
                        width: width1,
                        margin:
                            const EdgeInsets.symmetric(horizontal: padding12),
                        color: AppColors.white,
                      ),
                      GestureDetector(
                        onTap: () => 
                      context.router.replace(const LoginRoute()),
                        child: const Icon(
                          Icons.person_outlined,
                          color: AppColors.white,
                          size: iconSize32,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: height18),
              Row(
                children: [
                  const CircleAvatar(
                    radius: radius25,
                    backgroundColor: AppColors.white,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://avatars.githubusercontent.com/u/86590370?v=4',
                      ),
                      radius: radius24,
                    ),
                  ),
                  const SizedBox(width: width10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Usama Kabir ',
                            style: AppStyles.bodyMediumBold.copyWith(
                              color: AppColors.white,
                            ),
                          ),
                          const Icon(
                            Icons.verified,
                            color: AppColors.white,
                            size: iconSize16,
                          )
                        ],
                      ),
                      const SizedBox(height: height2),
                      Text(
                        '+92 310 667 7657',
                        style: AppStyles.labelSmall.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: height30),
              Text(
                'Explore our services',
                style: AppStyles.bodyMediumBold.copyWith(
                  color: AppColors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: height8),
        Padding(
          padding: const EdgeInsets.all(padding12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ServicesSection(),
              const SizedBox(height: height16),
              const Divider(thickness: appBarDivider),
              const SizedBox(height: height16),
              Text(
                'Previous orders',
                style: AppStyles.bodyMediumBold,
              ),
              const SizedBox(height: height16),
              const LastOrderPage(),
            ],
          ),
        ),
      ],
    );
  }
}
