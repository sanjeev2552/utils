part of utils;

class LoadingEvent extends BaseEvent {
  late bool isLoading;

  LoadingEvent(this.isLoading, {super.ignore = false}) : super((LoadingEvent).toString());
}
