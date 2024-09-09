import 'package:Mekanvlog/Model/yak%C4%B1n_mekan_yazi.dart';
import 'package:flutter/material.dart';

class mekanbilgi extends StatelessWidget {
  const mekanbilgi({super.key, required this.mekan});

  final mekanbilgisi mekan;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // resim olayları
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.45, //yukseklik
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: mekan.containerColor,
              child: Image.asset(
                mekan.resim,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.4,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.69,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 27, left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // for name
                    Text(
                      mekan.mekanName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                    // mekan kategori
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      mekan.mekanCategory,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Hakkında",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    // hakkında
                    Text(
                      mekan.mekanhakkinda,
                      style: const TextStyle(
                        height: 2,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // for schedules
                    const Text(
                      "Çalışma Saateleri",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        color: mekan.containerColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 80,
                            width: 100,
                            decoration: BoxDecoration(
                              color: mekan.color,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                mekan.tarih,
                                style: const TextStyle(
                                    fontSize: 30,
                                    height: 0.9,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Detaylar",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  mekan.danismasaatleri,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          // for back button
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 10,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
