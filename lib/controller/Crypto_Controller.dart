import 'package:cryptoapp/Remote_Services.dart';
import 'package:cryptoapp/models/Crypto_model.dart';
import 'package:get/state_manager.dart';

class CryptoController extends GetxController {
  List<Crypto> moviesList = [];

  bool loading = false;

  void fetchMovies() async {
    loading = true;
    List<Crypto>? crypto = await RemoteServices.fetchMovies();
    print('Crypto :: $crypto');
    if (crypto != null) {
      moviesList = crypto;
      loading = false;
    }
    update();
  }
}
