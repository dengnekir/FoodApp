import 'package:flutter/material.dart';

class mekanbilgisi {
  String resim;
  String kategoriresmi;
  String mekanName;
  String mekanCategory;
  Color containerColor;
  Color color;
  String tarih;
  int noOfmekan;
  int zaman1;
  int zaman2;
  int zaman3;
  String danismasaatleri;
  String mekanhakkinda;

  mekanbilgisi({
    required this.containerColor,
    required this.color,
    required this.tarih,
    required this.danismasaatleri,
    required this.zaman2,
    required this.zaman3,
    required this.resim,
    required this.kategoriresmi,
    required this.mekanName,
    required this.mekanCategory,
    required this.noOfmekan,
    required this.mekanhakkinda,
    required this.zaman1,
  });
}

List<mekanbilgisi> mekanitems = [
  mekanbilgisi(
      resim: "Images/dilruba.jpg",
      kategoriresmi: "Images/restorant.jpg",
      mekanName: 'Dilruba',
      mekanCategory: "Restorant",
      noOfmekan: 79, //bulunan mekan
      zaman1: 9,
      tarih: " Rezerv",
      mekanhakkinda:
          "Dilruba Restoranı, geleneksel ve lezzetli mekandır.Mekanın fethi paşa korosuna yakın olması büyük bir avantajdır. Misafirperver atmosferiyle favori duraklarındandır.",
      danismasaatleri: 'Her Gün . 7am - 24pm',
      zaman2: 13,
      zaman3: 20,
      containerColor: const Color(0xFFEEF0FF),
      color: const Color(0xFF6D7BCE)),
  mekanbilgisi(
      resim: "Images/kentlokanta.jpg",
      kategoriresmi: "Images/lokanta.webp",
      mekanName: 'Kent Lokantası',
      mekanCategory: "Lokanta",
      noOfmekan: 70, //bulunan mekan
       tarih: "Direk\nGeçiş",
      zaman1: 12,
      mekanhakkinda:
          "İşçi, emekli ve özellikle öğrenciler için 40tl ye 4 çeşit yemek. Burada sunulan yemekler, taze ve doğal malzemelerle hazırlanır, müşterilere enfes bir yemek deneyimi sunar.",
      danismasaatleri: 'Her gün . 12am - 19pm',
      zaman2: 19,
      zaman3: 20,
      containerColor: const Color(0xFFFCEFDF),
      color: const Color(0xFFFF8906)),
  mekanbilgisi(
      resim: "Images/beltur.jpg",
      kategoriresmi: "Images/kafe.jpg",
      mekanName: 'Beltur',
      mekanCategory: "Cafe",
      noOfmekan: 55, //bulunan mekan
       tarih: "Direk\nGeçiş",
      zaman1: 9,
      mekanhakkinda:
          "Beltur, Türkiye'nin önde gelen yemek hizmetleri şirketlerinden biridir. Yüksek kaliteli kafeleri müşterilerine unutulmaz deneyimler sunar.",
      danismasaatleri: 'Her Gün . 9am - 22pm',
      zaman2: 12,
      zaman3: 22,
      containerColor: const Color(0xFFEEF0FF),
      color: const Color(0xFF6D7BCE)),
  mekanbilgisi(
     tarih: "Direk\nGeçiş",
    resim: "Images/helvacıali.jpg",
    kategoriresmi: "Images/tatlı.webp",
    mekanName: 'Tatlıcı Ali 1900',
    mekanCategory: "Tatlı",
    noOfmekan: 99, //bulunan mekan
    zaman1: 8,
    mekanhakkinda:
        "Helvacı Ali, mahallede meşhur olan lezzetli helvalarıyla tanınır. Müşterileri tarafından sevilen Ali'nin helvası, geleneksel yöntemlerle özenle hazırlanır.",
    danismasaatleri: 'Her Gün . 7am - 24pm',
    zaman2: 12,
    zaman3: 24,
    containerColor: const Color.fromARGB(255, 238, 255, 244),
    color: const Color.fromARGB(255, 109, 206, 122),
  ),
  mekanbilgisi(
    resim: "Images/bubbletea.jpg",
    kategoriresmi: "Images/icecek.jpg",
    mekanName: 'Bubble Tea',
    mekanCategory: "İçecek",
    noOfmekan: 67, //bulunan mekan
    zaman1: 8,
     tarih: "Direk\nGeçiş",
    mekanhakkinda:
        "Bubble tea, Asya kökenli bir içecek olup, tatlı ve renkli toplar içeren içecek türüdür. Farklı meyve aromaları, süt çeşitleri ve çeşitli toplarla kişiselleştirilebilen bir içecektir",
    danismasaatleri: 'Her Gün . 8am - 24pm',
    zaman2: 13,
    zaman3: 24,
    containerColor: const Color.fromARGB(255, 252, 238, 255),
    color: const Color.fromARGB(255, 191, 109, 206),
  ),
];
