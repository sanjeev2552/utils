part of utils;

class Debouncer {
  // This time is on ms
  final int debounceTime;
  Timer? timer;
  String? lastQuery;

  Debouncer({this.debounceTime = 300});

  void debounce(String query, Function(String) debounceCallback) {
    if (lastQuery != query) {
      timer?.cancel();
      lastQuery = query;
      timer = Timer(Duration(milliseconds: debounceTime), () {
        debounceCallback(query);
      });
    }
  }

  void dispose() {
    timer?.cancel();
  }
}
