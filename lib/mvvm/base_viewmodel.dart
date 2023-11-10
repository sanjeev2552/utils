part of utils;

abstract class BaseViewModel {
  final List<Observer> _observers = List.empty(growable: true);

  void addObserver(Observer o) {
    if (_observers.contains(o)) {
      return;
    }
    _observers.add(o);
  }

  void removeObserver(Observer o) {
    if (_observers.contains(o)) {
      _observers.remove(o);
    }
  }

  void notify(BaseEvent event) {
    debugPrint("Event fired $event");
    for (var observer in _observers) {
      if (!event.ignore) {
        observer.notify(event);
      }
    }
  }
}
