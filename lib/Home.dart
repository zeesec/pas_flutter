// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tugas_akhir_semster/cart.dart';
import 'package:tugas_akhir_semster/detailProduct.dart';
import 'package:tugas_akhir_semster/inspirasi.dart';
import 'package:tugas_akhir_semster/profile.dart';
import 'package:tugas_akhir_semster/wishlist.dart';
import 'primaryColor.dart';
import 'component.dart';

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/ikea.png',
                width: 84,
                height: 33,
              ),
              Row(
                children: [
                  Icon(
                    Iconsax.notification,
                    color: PrimaryText,
                    size: 26,
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CartPage(),
                          ));
                    },
                    child: Icon(
                      Iconsax.shopping_cart,
                      color: PrimaryText,
                      size: 26,
                    ),
                  ),
                ],
              )
            ],
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _SearchBar(context),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                _layout1(context),
              ],
            ),
            Container(
              margin: EdgeInsets.only(right: 24, left: 24, top: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Produk Terpopuler',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: PrimaryText),
                  ),
                  Text(
                    'Lihat Semua',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Primary),
                  ),
                ],
              ),
            ),
            _layout2(context),
            Container(
              margin: EdgeInsets.only(right: 24, left: 24, top: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Telusuri Koleksi Kami',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: PrimaryText),
                  ),
                  Text(
                    'Lihat Semua',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Primary),
                  ),
                ],
              ),
            ),
            _layout3(),
            Container(
              margin: EdgeInsets.only(right: 24, left: 24, top: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Penawaran Terkini',
                    style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: PrimaryText),
                  ),
                  Text(
                    'Lihat Semua',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600, color: Primary),
                  ),
                ],
              ),
            ),
            _layout4(),
            SizedBox(
              height: 24,
            ),
            _BtmNav(context),
          ],
        ));
  }

  BottomNavigationBar _BtmNav(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Primary,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Beranda'),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InspirationPage(),
                    ),
                  );
                },
                child: Icon(Iconsax.coffee)),
            label: 'Inspirasi'),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WishlistPage(),
                    ),
                  );
                },
                child: Icon(Iconsax.heart)),
            label: 'Wishlist'),
        BottomNavigationBarItem(
            icon: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
                child: Icon(Iconsax.profile_circle)),
            label: 'Profile'),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }

  Row _layout4() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      componentList3(
        imgUrl: 'assets/pict (10).png',
        title: 'BLÅVINGAD',
        subtitle: 'Koleksi yang terinspirasi dari lautan untuk menciptakan ...',
        BgColor: Color(0xff4F707F),
      ),
      componentList3(
        imgUrl: 'assets/pict (12).png',
        title: 'VINTERFINT',
        subtitle: 'Koleksi VINTERFINT hadir dengan warna dan pola indah ...',
        BgColor: Color(0xff5E4238),
      ),
    ]);
  }

  Row _layout3() {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      componentList3(
        imgUrl: 'assets/pict (10).png',
        title: 'BLÅVINGAD',
        subtitle: 'Koleksi yang terinspirasi dari lautan untuk menciptakan ...',
        BgColor: Color(0xff4F707F),
      ),
      componentList3(
        imgUrl: 'assets/pict (12).png',
        title: 'VINTERFINT',
        subtitle: 'Koleksi VINTERFINT hadir dengan warna dan pola indah ...',
        BgColor: Color(0xff5E4238),
      ),
    ]);
  }

  Row _layout2(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        componentList2(
            imgUrl: 'assets/pict (7).png',
            title: 'KROKFJORDEN',
            subtitle: 'Pengait dengan plastik isap...',
            price: 'Rp99.900'),
        GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailProductPage(),
                ));
          },
          child: componentList2(
              imgUrl: 'assets/pict (8).png',
              title: 'ALEX/LAGKAPTEN',
              subtitle: 'Meja, hijau muda/putih, 120x60 cm',
              price: 'Rp1.909.000'),
        ),
        componentList2(
            imgUrl: 'assets/pict (9).png',
            title: 'FARDAL/PAX',
            subtitle: 'Kombinasi lemari pakaian, putih/hig...',
            price: 'Rp8.400.000'),
      ],
    );
  }

  Column _layout1(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Image.asset(
            'assets/Promo_1.png',
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            componentList(
                imgUrl: 'assets/pict (1).png', caption: 'Kamar Tidur'),
            componentList(
                imgUrl: 'assets/pict (2).png', caption: 'Ruang Kerja'),
            componentList(imgUrl: 'assets/pict (3).png', caption: 'Dapur'),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            componentList(
                imgUrl: 'assets/pict (4).png', caption: 'Bayi & Anak'),
            componentList(imgUrl: 'assets/pict (5).png', caption: 'Tekstil'),
            componentList(
                imgUrl: 'assets/pict (6).png', caption: 'Penyimpanan'),
          ],
        ),
      ],
    );
  }

  Container _SearchBar(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      padding: EdgeInsets.symmetric(horizontal: 16),
      width: 457,
      height: 48,
      decoration:
          BoxDecoration(border: Border.all(color: SecondLine, width: 1)),
      child: Row(
        children: [
          Icon(
            Iconsax.search_normal,
            color: PrimaryText,
            size: 24,
          ),
          SizedBox(
            width: 12,
          ),
          Text(
            'Cari barang impianmu',
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w400, color: SecondText),
          )
        ],
      ),
    );
  }
}
