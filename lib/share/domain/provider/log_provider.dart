import 'package:flutter_fimber/flutter_fimber.dart';
import 'package:flutter_nscore/share/dep/arch.dart';

final Provider<LogTree> logProvider = Provider((ref) {
    return DebugTree(useColors: true);
});