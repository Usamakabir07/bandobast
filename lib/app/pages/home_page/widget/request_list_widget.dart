import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class RequestListWidget extends HookWidget {
  const RequestListWidget({super.key, required this.showRequests});
  final ValueNotifier<bool> showRequests;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(padding10),
      decoration: BoxDecoration(
        color: AppColors.white.withValues(alpha: double06),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              itemBuilder: (context, index) {
                return _buildRequestCard(index: index);
              },
            ),
          ),
          GestureDetector(
            onTap: () => showRequests.value = false,
            child: Card(
              elevation: elevation8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius100)),
              child: const CircleAvatar(
                radius: radius26,
                backgroundColor: AppColors.redWine,
                child: Icon(Icons.close),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRequestCard({required int index}) {
    return Card(
      elevation: elevation4,
      // color: AppColors.iceberg,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: padding12,
          vertical: padding12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(
                  Icons.history,
                  color: AppColors.boulder,
                ),
                Text(
                  " ${20 + index} mins",
                  style: AppStyles.titleMediumBold.copyWith(
                      fontWeight: FontWeight.w700, color: AppColors.boulder),
                ),
              ],
            ),
            ListTile(
              leading: const CircleAvatar(
                backgroundColor: AppColors.seaGreen,
                backgroundImage: NetworkImage(
                  "https://www.pakp.gov.pk/wp-content/uploads/2024/02/Ali-Amin-Gandapur.jpg",
                ),
              ),
              horizontalTitleGap: padding8,
              title: Text(
                "Ali Amin ${index + 1}",
                style: AppStyles.bodyLargeBold
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              trailing: Text(
                "PKR 530",
                style: AppStyles.titleMediumBold.copyWith(
                    fontWeight: FontWeight.w700, color: AppColors.seaGreen),
              ),
              subtitle: Row(
                children: [
                  const Row(
                    children: [
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: iconSize16,
                        color: AppColors.gamboge,
                      ),
                    ],
                  ),
                  Text(
                    " 4.7 (189)",
                    style: AppStyles.labelMedium,
                  )
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                    child: AppElevatedButton(
                  text: 'Decline',
                  color: AppColors.boulder.withValues(alpha: double06),
                )),
                const SizedBox(
                  width: width10,
                ),
                const Expanded(child: AppElevatedButton(text: 'Accept')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
