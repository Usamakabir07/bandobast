import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';

class ErrorSnackBar extends StatefulWidget {
  final String message;
  final Duration duration;
  final Duration animationDuration;
  final Duration exitAnimationDuration;

  const ErrorSnackBar({
    super.key,
    required this.message,
    this.duration = const Duration(seconds: 2),
    this.animationDuration = const Duration(milliseconds: 800),
    this.exitAnimationDuration = const Duration(milliseconds: 300),
  });

  void show(BuildContext context) {
    OverlayEntry overlayEntry;

    overlayEntry = OverlayEntry(builder: (context) => this);

    Overlay.of(context).insert(overlayEntry);

    Future.delayed(duration, () {
      (context as Element).markNeedsBuild();
    });

    Future.delayed(duration + exitAnimationDuration, () {
      overlayEntry.remove();
    });
  }

  @override
  State<ErrorSnackBar> createState() => _ErrorSnackBarState();
}

class _ErrorSnackBarState extends State<ErrorSnackBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _shakeAnimation;
  bool _isExiting = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );

    _slideAnimation = TweenSequence<Offset>([
      TweenSequenceItem(
        tween: Tween<Offset>(
          begin: const Offset(1.0, 0.0),
          end: Offset.zero,
        ).chain(CurveTween(curve: Curves.easeOutQuint)),
        weight: 1,
      ),
    ]).animate(_controller);

    _shakeAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 15.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 15.0, end: -15.0), weight: 2),
      TweenSequenceItem(tween: Tween(begin: -15.0, end: 10.0), weight: 2),
      TweenSequenceItem(tween: Tween(begin: 10.0, end: -10.0), weight: 2),
      TweenSequenceItem(tween: Tween(begin: -10.0, end: 5.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 5.0, end: -5.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -5.0, end: 0.0), weight: 1),
    ]).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(0.5, 1.0)),
    );

    _controller.forward();

    Future.delayed(widget.duration, () {
      if (mounted) {
        setState(() {
          _isExiting = true;
        });
        _controller.duration = widget.exitAnimationDuration;
        _slideAnimation = Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(1.0, 0.0),
        ).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeInQuint),
        );
        _controller.forward(from: 0.0);
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return SlideTransition(
          position: _slideAnimation,
          child: Transform.translate(
            offset: Offset(_isExiting ? 0 : _shakeAnimation.value, 0),
            child: Material(
              color: Colors.transparent,
              child: Center(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.8,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.errorColor,
                    borderRadius: BorderRadius.circular(borderRadius12),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: padding8,
                    vertical: padding12,
                  ),
                  child: Text(
                    widget.message,
                    style: AppStyles.bodyMedium.copyWith(
                      color: AppColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
