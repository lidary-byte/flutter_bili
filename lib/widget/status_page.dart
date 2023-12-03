import 'package:flutter/material.dart';
import 'package:flutter_bili/http/net_state.dart';

class StatusPage extends StatelessWidget {
  final VoidCallback? onRetry;
  final NetState status;
  final Widget contentWidget;

  const StatusPage(
      {super.key,
      required this.contentWidget,
      required this.status,
      this.onRetry});

  @override
  Widget build(BuildContext context) {
    return _statusWidget();
  }

  Widget _statusWidget() {
    if (status == NetState.loadingState) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (status == NetState.successState) {
      return contentWidget;
    } else if (status == NetState.errorState) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('网络异常'),
          const SizedBox(height: 16),
          TextButton(onPressed: onRetry, child: const Text('重试'))
        ],
      );
    }
    return const SizedBox();
  }
}
