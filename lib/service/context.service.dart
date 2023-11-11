part of utils;

class ContextService {
  ContextService._();

  static final ContextService _instance = ContextService._();

  static ContextService get instance => _instance;

  final navigatorKey = GlobalKey<NavigatorState>();

  BuildContext get context => navigatorKey.currentContext!;
}
