import 'package:flutter_app_template/services/authentication_service.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_app_template/app/app.locator.dart';
import 'package:flutter_app_template/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  Future runStartupLogic() async {
    // 2. Check if the user is logged in
    if (_authenticationService.userLoggedIn()) {
      // 3. Navigate to HomeView
      _navigationService.replaceWith(Routes.homeView, arguments: const HomeViewArguments(startingIndex: 111));
    } else {
      // 4. Or navigate to LoginView
      _navigationService.replaceWith(Routes.loginView);
    }
  }
}
