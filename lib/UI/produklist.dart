import 'package:flutter/material.dart';
// ignore: unused_import
import './detail_produk.dart';

// ignore: camel_case_types
class produklist extends StatelessWidget {
  const produklist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(title: const Text("Produck Listing")),
      // body untuk content
      // menampilkan list
      body: ListView(
        shrinkWrap: true,
        // padding
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        // anggota dari list berupa widget children
        children: <Widget>[
          // GestireDetector untuk menangani gesture pengguna
          GestureDetector(
            // listener berupa kulik 1x
            onTap: () {
              // navigator.push untuk berpindah halaman
              Navigator.of(context).push(MaterialPageRoute(
                // pemanggilan class detailproduk beserta pengiriman detail produk
                builder: (BuildContext context) => const DetailProduk(
                  name: "Vivo",
                  description:
                      "Vivo Z1 Pro merupakan HP dengan layar 6.53 dan tingkat densitas piksel sebesar 395ppi. Ia dilengkapi dengan kamera belakang 16 + 8 + 2MP dan kamera depan 2MP. HP ini juga hadir dengan kapasitas baterai 5000mAh. Vivo Z1 Pro dirilis pada: 2019.",
                  price: 3100000,
                  image: "okikvivo.jpg",
                  star: 5,
                ),
              ));
            },
            // memanggil class ProdukBox
            child: ProductBox(
              // berisi parameter yang diperlukan di class ProdukBox
              name: "Vivo",
              description: "Ini Adalah Hp Vivo Z1 Pro ",
              price: 3100000,
              image: "okikvivo.jpg",
              star: 5,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Oppo",
                      description:
                          " Oppo Reno3 merupakan HP dengan layar 6.4 dan tingkat densitas piksel sebesar 411ppi. Ia dilengkapi dengan kamera belakang 48 + 8 + 2 + 2MP dan kamera depan 16MP.",
                      price: 4200000,
                      image: "okikoppo.jpg",
                      star: 4),
                ),
              );
            },
            child: ProductBox(
                name: "Oppo",
                description: " Ini Adalah Hp Oppo Reno 3",
                price: 4200000,
                image: "okikoppo.jpg",
                star: 4),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Iphone",
                      description:
                          "Apple iPhone 13 Pro Max merupakan HP dengan layar 6.7 dan tingkat densitas piksel sebesar 458ppi. Ia dilengkapi dengan kamera belakang 12 + 12 + 12MP dan kamera depan 12MP. HP ini juga hadir dengan kapasitas baterai 3285mAh. Apple iPhone 13 Pro Max dirilis pada: 2021",
                      price: 15500000,
                      image: "okikapple.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Iphone",
                description: "Ini Adalah Hp Iphone 13 Pro Max",
                price: 15500000,
                image: "okikapple.jpg",
                star: 3),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Asus Rog",
                      description:
                          "Pada sektor dapur pacu, ROG Phone II dibekali chipset Snapdragon 855 dengan GPU Adreno 640 yang mampu digunakan untuk bermain game",
                      price: 10500000,
                      image: "okikrog.jpg",
                      star: 5),
                ),
              );
            },
            child: ProductBox(
                name: "Asus Rog",
                description: "Ini Adalah Hp Asus Rog Phone 2",
                price: 10500000,
                image: "okikrog.jpg",
                star: 5),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) => const DetailProduk(
                      name: "Samsung",
                      description:
                          "Samsung Galaxy S21 adalah HP yang dibekali dengan Kamera Belakang 12 MP dan menggunakan baterai berkapasitas 4.500 mAh. Performa Ponsel Samsung Galaxy S21 didukung oleh Prosesor Exynos 2100 serta varian RAM 8 GB.",
                      price: 2500000,
                      image: "okiksamsung.jpg",
                      star: 2),
                ),
              );
            },
            child: ProductBox(
                name: "Samsung",
                description: "Ini Adalah Hp Samsung Galaxy S21",
                price: 2500000,
                image: "okiksamsung.jpg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

// menggunkan stateleswidget
class ProductBox extends StatelessWidget {
  // deklarasi variable yang diterima dari Productbox
  ProductBox(
      {required this.name,
      required this.description,
      required this.price,
      required this.image,
      required this.star});
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  // menampung variabel yang di terima untuk dapat digunakan pada class ini
  @override
  Widget build(BuildContext context) {
    // menggunkan widget container
    return Container(
      // padding
      padding: const EdgeInsets.all(2),
      // height
      // menggunakan widget card
      child: Card(
        // membuat tampilan secara horisontal atara image dan deskripsi
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // children diunakan untuk menampung banyak widget
          children: <Widget>[
            Image.asset(
              "assets/appimages/$image",
              width: 150,
            ),
            Expanded(
                // child digunakan untuk menampung satu widget
                child: Container(
              padding: const EdgeInsets.all(5),
              // membuat tampilan secara vertical
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // ini isi tampilan vertical tersebut
                children: <Widget>[
                  // menampilkan variabel dengan widget text
                  Text(name,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(description),
                  Text(
                    "Price: $price",
                    style: const TextStyle(color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      // menampilkan widget icon dibungkus dengan row
                      Row(
                        children: const <Widget>[
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.deepOrange,
                          ),
                          Icon(
                            Icons.star,
                            size: 10,
                            color: Colors.orange,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
