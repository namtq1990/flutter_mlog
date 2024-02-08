library flutter_nscore;

import 'package:flutter/widgets.dart';
import 'package:flutter_nscore/share/dep/arch.dart';
import 'package:flutter_nscore/share/dep/core.dart';
import 'package:flutter_nscore/share/domain/provider/log_provider.dart';

final appProvider = Provider((ref) {
  var ret = CoreApp();
  ret.initialize(ref);
  return ret;
});

class CoreApp {
  var mIsInitialized = false;

  void initialize(ProviderRef<Object?> ref) {
    NLog.plantTree(ref.watch(logProvider));
    NLog.d("Application initialized");

    mIsInitialized = true;
  }

  /// Method mock app for making Flutter application. Wrap app based on your architecture
  static Widget makeApp(
      {required Widget child, Widget Function(Widget)? madeParent}) {
    final content = _CoreAppWidget(children: child);

    madeParent ??= (child) => ProviderScope(child: child);

    return madeParent(content);
  }
}

class _CoreAppWidget extends ConsumerWidget {
  final Widget children;

  const _CoreAppWidget({super.key, required this.children});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(appProvider);

    return children;
  }
}
