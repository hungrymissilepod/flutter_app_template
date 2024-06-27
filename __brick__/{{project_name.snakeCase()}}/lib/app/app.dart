import 'package:{{project_name.snakeCase()}}/counter/view/counter_view.dart';
import 'package:stacked/stacked_annotations.dart';

// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: CounterView),
// @stacked-route
  ],
  dependencies: [
// @stacked-service
  ],
  bottomsheets: [
    // @stacked-bottom-sheet
  ],
  dialogs: [
// @stacked-dialog
  ],
  logger: StackedLogger(),
)
class App {}
