import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/common_widgets/app_outlined_button.dart';
import 'package:bandobast/app/router/app_router.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import '../../../utils/dimensions.dart';

class OnboardingBody extends HookWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = usePageController();
    final currentPage = useState(0);
    final timer = useRef<Timer?>(null);

    final slides = [
      {
        "illustration": premium,
        "title": "Easy Employment",
        "subtitle": "Made the Employment easy",
        "color": AppColors.seaGreen,
      },
      {
        "illustration": cleaning,
        "title": "Comfortable Jobs",
        "subtitle": "Make income on your ease",
        "color": AppColors.silverTree,
      },
      {
        "illustration": green,
        "title": "No Skills Required",
        "subtitle": "You don't need a skill to earn",
        "color": AppColors.successColor,
      },
    ];

    useEffect(() {
      timer.value = Timer.periodic(const Duration(seconds: 5), (_) {
        final nextPage = (currentPage.value + 1) % slides.length;
        pageController.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 600),
          curve: Curves.easeInOutQuart,
        );
      });
      return () => timer.value?.cancel();
    }, []);

    return SafeArea(
      child: Column(
        children: [
          Text(
            "Bandobast",
            textAlign: TextAlign.center,
            style: AppStyles.headLineSmallBold.copyWith(
              color: AppColors.seaGreen,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: height10),
          Expanded(
            child: PageView.builder(
              controller: pageController,
              itemCount: slides.length,
              onPageChanged: (index) => currentPage.value = index,
              itemBuilder: (context, index) {
                final slide = slides[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: padding32),
                  child: Column(
                    children: [
                      const SizedBox(height: height60),

                      // Illustration
                      Expanded(
                        flex: 5,
                        child: Lottie.asset(
                          slide['illustration'].toString(),
                          fit: BoxFit.contain,
                          repeat:
                              true, // set to false if you want it to play only once
                        ),
                      ),

                      // Content
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            const SizedBox(height: height32),
                            Text(
                              slide['title']!.toString(),
                              textAlign: TextAlign.center,
                              style: AppStyles.headlineMediumBold,
                            ),
                            const SizedBox(height: height20),
                            Text(
                              slide['subtitle']!.toString(),
                              textAlign: TextAlign.center,
                              style: AppStyles.bodyLarge.copyWith(
                                color: AppColors.boulder,
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Bottom Section
          Padding(
            padding: const EdgeInsets.all(padding32),
            child: Column(
              children: [
                // Page Indicators
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    slides.length,
                    (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.only(right: padding8),
                      width: currentPage.value == index ? width24 : width8,
                      height: height4,
                      decoration: BoxDecoration(
                        color: currentPage.value == index
                            ? slides[0]['color'] as Color
                            : AppColors.lightGray,
                        borderRadius: BorderRadius.circular(borderRadius4),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: height22),

                // Action Button
                SizedBox(
                    width: double.infinity,
                    child: Column(
                      children: [
                        AppElevatedButton(
                          onPressed: () =>
                              context.router.push(const LoginRoute()),
                          text: "Continue with Phone",
                          color: AppColors.seaGreen,
                          prefixIcon: const Icon(
                            Icons.phone_android_rounded,
                            color: AppColors.white,
                          ),
                        ),
                        const SizedBox(
                          height: height10,
                        ),
                        AppOutlinedButton(
                            onPressed: () {},
                            text: " Continue with Google",
                            borderColor: AppColors.boulder,
                            textColor: AppColors.boulder,
                            prefixIcon: Image.asset(
                              googleIcon,
                              height: height20,
                              width: width20,
                            )),
                        const SizedBox(height: height30),
                        SizedBox(
                            width: MediaQuery.of(context).size.width * double09,
                            child: Text.rich(
                              TextSpan(
                                text: "By continuing, you agree to the ",
                                style: AppStyles.bodyMedium,
                                children: [
                                  TextSpan(
                                    text: "Terms & Conditions",
                                    style: AppStyles.bodyMedium.copyWith(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: " and ",
                                  ),
                                  TextSpan(
                                    text: "Privacy Policy",
                                    style: AppStyles.bodyMedium.copyWith(
                                      decoration: TextDecoration.underline,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(text: "."),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            )),
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MinimalIllustration extends StatelessWidget {
  final String type;
  final Color color;

  const MinimalIllustration({
    super.key,
    required this.type,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width280,
      height: height280,
      child: CustomPaint(painter: MinimalIllustrationPainter(type, color)),
    );
  }
}

class MinimalIllustrationPainter extends CustomPainter {
  final String type;
  final Color color;

  MinimalIllustrationPainter(this.type, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;

    switch (type) {
      case 'car_detailing':
        _drawCarDetailingIcon(canvas, centerX, centerY);
        break;
      case 'interior_cleaning':
        _drawInteriorCleaningIcon(canvas, centerX, centerY);
        break;
      case 'eco_wash':
        _drawEcoWashIcon(canvas, centerX, centerY);
        break;
    }
  }

  void _drawCarDetailingIcon(Canvas canvas, double centerX, double centerY) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.1)
      ..style = PaintingStyle.fill;

    // Background circle
    canvas.drawCircle(Offset(centerX, centerY), 100, fillPaint);

    // Simplified car outline
    final carPath = Path()
      ..moveTo(centerX - 60, centerY + 10)
      ..lineTo(centerX - 50, centerY - 20)
      ..quadraticBezierTo(centerX - 30, centerY - 35, centerX, centerY - 35)
      ..quadraticBezierTo(
        centerX + 30,
        centerY - 35,
        centerX + 50,
        centerY - 20,
      )
      ..lineTo(centerX + 60, centerY + 10)
      ..lineTo(centerX + 40, centerY + 25)
      ..lineTo(centerX - 40, centerY + 25)
      ..close();

    canvas.drawPath(carPath, paint);

    // Wheels
    canvas.drawCircle(Offset(centerX - 30, centerY + 25), 8, paint);
    canvas.drawCircle(Offset(centerX + 30, centerY + 25), 8, paint);

    // Shine lines
    for (int i = 0; i < 3; i++) {
      final y = centerY - 50 + (i * 15);
      canvas.drawLine(
        Offset(centerX - 15, y),
        Offset(centerX + 15, y),
        Paint()
          ..color = color.withValues(alpha: 0.4)
          ..strokeWidth = 2
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  void _drawInteriorCleaningIcon(
    Canvas canvas,
    double centerX,
    double centerY,
  ) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.1)
      ..style = PaintingStyle.fill;

    // Background circle
    canvas.drawCircle(Offset(centerX, centerY), 100, fillPaint);

    // Car seat
    final seatPath = Path()
      ..moveTo(centerX - 40, centerY + 30)
      ..lineTo(centerX - 40, centerY - 10)
      ..quadraticBezierTo(
        centerX - 40,
        centerY - 30,
        centerX - 20,
        centerY - 30,
      )
      ..lineTo(centerX + 20, centerY - 30)
      ..quadraticBezierTo(
        centerX + 40,
        centerY - 30,
        centerX + 40,
        centerY - 10,
      )
      ..lineTo(centerX + 40, centerY + 30);

    canvas.drawPath(seatPath, paint);

    // Cleaning tool
    canvas.drawLine(
      Offset(centerX + 60, centerY - 40),
      Offset(centerX + 60, centerY - 10),
      paint..strokeWidth = 4,
    );

    canvas.drawCircle(Offset(centerX + 60, centerY - 45), 8, paint);

    // Clean bubbles
    for (int i = 0; i < 4; i++) {
      final x = centerX - 10 + (i * 8);
      final y = centerY - 50 - (i * 5);
      canvas.drawCircle(
        Offset(x, y),
        3 - (i * 0.5),
        Paint()
          ..color = color.withValues(alpha: 0.6)
          ..style = PaintingStyle.stroke
          ..strokeWidth = 1,
      );
    }
  }

  void _drawEcoWashIcon(Canvas canvas, double centerX, double centerY) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final fillPaint = Paint()
      ..color = color.withValues(alpha: 0.1)
      ..style = PaintingStyle.fill;

    // Background circle
    canvas.drawCircle(Offset(centerX, centerY), 100, fillPaint);

    // Water drop
    final dropPath = Path()
      ..moveTo(centerX, centerY + 30)
      ..quadraticBezierTo(centerX - 25, centerY, centerX, centerY - 35)
      ..quadraticBezierTo(centerX + 25, centerY, centerX, centerY + 30);

    canvas.drawPath(dropPath, paint);

    // Leaf
    final leafPath = Path()
      ..moveTo(centerX + 35, centerY + 15)
      ..quadraticBezierTo(
        centerX + 50,
        centerY - 10,
        centerX + 35,
        centerY - 25,
      )
      ..quadraticBezierTo(
        centerX + 20,
        centerY - 15,
        centerX + 35,
        centerY + 15,
      );

    canvas.drawPath(leafPath, paint);

    // Leaf vein
    canvas.drawLine(
      Offset(centerX + 35, centerY + 15),
      Offset(centerX + 35, centerY - 20),
      Paint()
        ..color = color.withValues(alpha: 0.5)
        ..strokeWidth = 1,
    );

    // Small water droplets
    for (int i = 0; i < 3; i++) {
      final x = centerX - 50 + (i * 15);
      final y = centerY - 60 + (i * 10);
      final size = 4 - (i * 1);

      final smallDropPath = Path()
        ..moveTo(x, y + size)
        ..quadraticBezierTo(x - size, y - size / 2, x, y - size)
        ..quadraticBezierTo(x + size, y - size / 2, x, y + size);

      canvas.drawPath(
        smallDropPath,
        Paint()
          ..color = color.withValues(alpha: 0.6)
          ..style = PaintingStyle.fill,
      );
    }
  }

  @override
  bool shouldRepaint(MinimalIllustrationPainter oldDelegate) =>
      oldDelegate.type != type || oldDelegate.color != color;
}
