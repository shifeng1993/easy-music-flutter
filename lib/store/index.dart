import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
import 'package:redux_logging/redux_logging.dart';

import './reducers/index.dart';
import './states/AppState.dart';

Store<AppState> createStore() {
  Store<AppState> store = new Store(
    appReducer,
    initialState: new AppState([]),
    middleware: [new LoggingMiddleware.printer(), thunkMiddleware],
  );
  return store;
}
