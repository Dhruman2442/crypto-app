import 'package:cryptoapp/models/Crypto_model.dart';
import 'package:cryptoapp/modules/Crypto_Details.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Cryptocard extends StatelessWidget {
  final Crypto crypto;

  const Cryptocard(this.crypto, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CryptoDetails(crypto)));
      },
      child: Card(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("${crypto.baseAsset.toUpperCase()}/",
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                          Text("${crypto.quoteAsset.toUpperCase()}",
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        ],
                      ),
                      Text("${crypto.volume}",
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            crypto.highPrice,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.green),
                          ),
                          Text(
                            crypto.lowPrice,
                            style: const TextStyle(
                                fontSize: 15, color: Colors.red),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        width: 85,
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          crypto.lastPrice,
                          style: const TextStyle(
                            fontSize: 12.5,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void title() {
    final userdata = GetStorage();
    userdata.write("Crypto Title", crypto.symbol);
  }
}
