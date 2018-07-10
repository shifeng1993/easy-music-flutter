import 'package:redux/redux.dart';
import '../states/AppState.dart';
import '../actions/index.dart';

List<String> addItemReducer(List<String> items, AddItemAction action) {
  return new List.from(items)..add(action.item);
}

List<String> removeItemReducer(List<String> items, RemoveItemAction action) {
  return new List.from(items)..remove(action.item);
}

// 把reducer的函数合并到 `itemsReducer`.
Reducer<List<String>> reducers = combineReducers<List<String>>([
  new TypedReducer<List<String>, AddItemAction>(addItemReducer),
  new TypedReducer<List<String>, RemoveItemAction>(removeItemReducer),
]);

// 和以前一样使用reducer
AppState appReducer(AppState state, action) => new AppState(
  reducers(state.items, action)
);