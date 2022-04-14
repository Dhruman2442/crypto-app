import 'package:cryptoapp/models/Crypto_model.dart';
import 'package:flutter/material.dart';

List<String> listcrypto = [];

class CryptoDetails extends StatefulWidget {
  final Crypto crypto;

  const CryptoDetails(this.crypto, {Key? key}) : super(key: key);

  @override
  State<CryptoDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<CryptoDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            "Crypto Details",
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            // The containers in the background
            Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * .25,
                  color: Colors.blue.shade400,
                ),
              ],
            ),
            Container(
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(top: 15.0),
                child: Container(
                  margin: const EdgeInsets.all(12),
                  height: 400,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 10),
                        child: Text(
                          widget.crypto.baseAsset.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Text(
                                "Volume ",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.crypto.volume,
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade900),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(children: [
                              Container(
                                margin: const EdgeInsets.only(bottom: 10),
                                child: const Text(
                                  "Asset",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        "Base Asset ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      space(),
                                      Text(
                                        widget.crypto.baseAsset.toUpperCase(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      space(),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        "Quote Asset ",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      space(),
                                      Text(
                                        widget.crypto.quoteAsset.toUpperCase(),
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      space(),
                                    ],
                                  ),
                                ],
                              ),
                            ]),
                          )),
                      space(),
                      Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  child: const Text(
                                    "Price",
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Open Price",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    Text(
                                      widget.crypto.openPrice,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                                space(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "High Price",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.green),
                                    ),
                                    Text(
                                      widget.crypto.highPrice,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green),
                                    ),
                                  ],
                                ),
                                space(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Low Price",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.red),
                                    ),
                                    Text(
                                      widget.crypto.lowPrice,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                                space(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Last Price",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      widget.crypto.lastPrice,
                                      style: const TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ))
          ],
        ));
  }

  Widget space() {
    return const SizedBox(
      height: 5,
    );
  }

  Widget spaceline() {
    return SizedBox(
        height: 2,
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.grey,
        ));
  }
}
