import 'package:shopingapp/services/base_client.dart';
import 'package:shopingapp/controllers/base_controller.dart';

class ServicesController with BaseController {
  void read(String baseUrl, String api) async {
    showLoading('Fetching data');
    var response = await BaseClient().get(baseUrl, api).catchError(handleError);
    hideLoading();
    print(response);
  }
}
