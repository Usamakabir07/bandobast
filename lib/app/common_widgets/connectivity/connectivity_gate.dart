import 'package:bandobast/app/common_widgets/app_elevated_button.dart';
import 'package:bandobast/app/themes/app_colors.dart';
import 'package:bandobast/app/themes/app_styles.dart';
import 'package:bandobast/app/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

class ConnectivityGate extends HookWidget {
  const ConnectivityGate({
    super.key,
    required this.child,
    required this.onRetry,
    this.message,
    this.autoRetryOnReconnect = true,
  });

  final Widget child;
  final VoidCallback onRetry;
  final String? message;
  final bool autoRetryOnReconnect;

  @override
  Widget build(BuildContext context) {
    final internet = useMemoized(() => InternetConnection());
    final refreshing = useState(false);

    // connectivity stream
    final snap = useStream<InternetStatus>(
      internet.onStatusChange,
      initialData: InternetStatus.connected,
    );
    final online = snap.data == InternetStatus.connected;

    // detect offline -> online transition
    final wasOnlineRef = useRef<bool?>(online);
    useEffect(() {
      if (wasOnlineRef.value == false && online == true && autoRetryOnReconnect) {
        Future.microtask(onRetry); // run cubit.init()
      }
      wasOnlineRef.value = online;
      return null;
    }, [online]);

    Future<void> handleRefresh() async {
      if (refreshing.value) return;
      refreshing.value = true;
      final hasInternet = await internet.hasInternetAccess;
      await Future.delayed(const Duration(milliseconds: 300));
      refreshing.value = false;

      if (hasInternet) {
        onRetry();
      }
    }

    return Stack(
      children: [
        child, // splash stays mounted

        if (!online)
          Positioned.fill(
            child: Container(
              color: Colors.black.withValues(alpha: .35),
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Material(
                  borderRadius: BorderRadius.circular(16),
                  color: Theme.of(context).colorScheme.surface,
                  child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.wifi_off, size: 56),
                        const SizedBox(height: 12),
                        Text(
                          message ?? "No Internet connection",
                          style: AppStyles.titleMedium,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Please check your internet connection and try again",
                          style: AppStyles.bodyMedium.copyWith(
                            color: Theme.of(context).hintColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: height16),
                        AppElevatedButton(
                          color: AppColors.seaGreen,
                          onPressed: handleRefresh,
                          text: "Retry",
                          isLoading: refreshing.value,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
