import 'package:cryptoapp/controller/Crypto_Controller.dart';
import 'package:cryptoapp/modules/Crypto_Card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final CryptoController cryptocontroller = Get.put(CryptoController());

  @override
  void initState() {
    cryptocontroller.loading = true;
    cryptocontroller.fetchMovies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Crypto App"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Column(
          children: [
            GetBuilder(
              builder: (CryptoController controller) {
                return (controller.loading)
                    ? Container()
                    : Expanded(
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: controller.moviesList.length,
                          itemBuilder: (context, index) {
                            return Cryptocard(
                                cryptocontroller.moviesList[index]);
                          },
                        ),
                      );
              },
            )
          ],
        ),
      ),
    );
  }
}
