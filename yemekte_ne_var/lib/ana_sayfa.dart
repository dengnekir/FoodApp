import 'package:Mekanvlog/Model/yak%C4%B1n_mekan_yazi.dart';
import 'package:Mekanvlog/yak%C4%B1n_mekan_icerik.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          // profil ve menu kısmı
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("Images/menu.png"),
              Image.asset("Images/profile.png"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            " Size Yakın Mekanlar",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            " 5 Tane Bulundu",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black45),
          ),
          const SizedBox(
            height: 30,
          ),
          // arama kısmı fonksiyonu
          searchBar(),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              const Text(
                " Kategoriler",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Text(
                " Filtrele",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                height: 25,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xFFFDBFAFC)),
                child: const Center(
                  child: Text(
                    "Dokun",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: mekanitems.length,
              itemBuilder: (context, index) {
                final mekanlar = mekanitems[index];
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Card(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 160,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(mekanlar.kategoriresmi),
                                fit: BoxFit.cover),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          mekanlar.mekanCategory,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          //noof mekan verileri model dartta kendimiz giriyoruz, değiştirebiliriz bunlar ortalama mekan sayısı
                          "${mekanlar.noOfmekan.toString()} Yer Bulundu",
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.black38),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "  Size Yakın Yerler",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: mekanitems.length,
              itemBuilder: (context, index) {
                final yakinmekan = mekanitems[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => mekanbilgi(mekan: yakinmekan),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Material(
                      elevation: 5,
                      color: yakinmekan.containerColor,
                      borderRadius: BorderRadius.circular(40),
                      child: Column(
                        children: [
                          SizedBox(
                            width: double.infinity,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: CircleAvatar(
                                    backgroundImage:
                                        AssetImage(yakinmekan.resim),
                                    radius: 40,
                                  ),
                                ),
                                // Buraya Expanded ekleyerek taşmayı engelleyin
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(top: 13, left: 5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              yakinmekan.mekanName,
                                              style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.amber,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.amber,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.amber,
                                            ),
                                            const Icon(
                                              Icons.star,
                                              size: 18,
                                              color: Colors.amber,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          yakinmekan.mekanCategory,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              height: 25,
                                              width: 50,
                                              decoration: BoxDecoration(
                                                color: yakinmekan.color,
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "${yakinmekan.zaman1.toString()}.00",
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                                "${yakinmekan.zaman2.toString()}.00"),
                                            const SizedBox(
                                              width: 30,
                                            ),
                                            Text(
                                                "${yakinmekan.zaman3.toString()}.00"),
                                            const SizedBox(
                                              width: 30.5,
                                            ),
                                            Material(
                                              color: yakinmekan.color,
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                bottomRight:
                                                    Radius.circular(40),
                                              ),
                                              child: const Padding(
                                                padding: EdgeInsets.all(15),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ]),
      ),
    );
  }

  Padding searchBar() {
    //arama fonksiyonu
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: const Color.fromARGB(31, 141, 140, 140),
            borderRadius: BorderRadius.circular(15)),
        child: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Icon(
                Icons.search,
                size: 30,
                color: Colors.black54,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 18),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Nereye gitmek istiyorsunuz",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
