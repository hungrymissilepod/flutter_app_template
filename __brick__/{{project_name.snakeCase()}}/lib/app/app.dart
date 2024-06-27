import 'package:stacked/stacked_annotations.dart';
import 'package:my_app/counter/view/counter_view.dart';
import 'package:stacked_services/stacked_services.dart';

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
