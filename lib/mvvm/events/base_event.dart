part of utils;

abstract class BaseEvent {
  /// This is used for debugging purpose only
  final String identifier;

  /// This is used to ignore a particular event.
  /// 
  /// if `true`: [Observer.notify] method will not be called
  final bool ignore;

  BaseEvent(this.identifier, {this.ignore = false});

  @override
  String toString() {
    return "BaseEvent(identifier: $identifier, ignore: $ignore)";
  }
}
