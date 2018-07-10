import 'package:meta/meta.dart';

@immutable
class AppState {
  final List<String> items;

  AppState(this.items);

  @override
  String toString() {
    return '''AppState{
            items: $items
        }''';
  }
}
