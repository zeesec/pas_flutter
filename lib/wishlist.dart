// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tugas_akhir_semster/Home.dart';
import 'package:tugas_akhir_semster/inspirasi.dart';
import 'package:tugas_akhir_semster/profile.dart';
import 'component.dart';
import 'primaryColor.dart';

class WishlistPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 74, bottom: 26, left: 24, right: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Wishlist',
                      style: GoogleFonts.poppins(
                          color: PrimaryText,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Iconsax.shopping_cart,
                      color: PrimaryText,
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 26),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: 48,
                  decoration: BoxDecoration(
                      border: Border.all(color: SecondLine, width: 1)),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Icon(
                        Iconsax.search_normal,
                        color: PrimaryText,
                        size: 24,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        'Cari barang diwishlist',
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: SecondText),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '4',
                          style: GoogleFonts.poppins(
                              color: PrimaryText, fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: 'Barang',
                          style: GoogleFonts.poppins(
                              color: PrimaryText, fontWeight: FontWeight.w400)),
                    ])),
                    Icon(Iconsax.menu_1)
                  ],
                ),
                componentWishlist(
                    imgUrl: 'assets/Pict (25).png',
                    title: 'ALEX',
                    subtitle: 'Unit laci, abu-abu toska, \n36x70 cm',
                    price: 'Rp1.350.000'),
                SizedBox(
                  height: 24,
                ),
                componentWishlist(
                    imgUrl: 'assets/pict (26).png',
                    title: 'MILLBERGET',
                    subtitle: 'Kursi putar, murum hitam',
                    price: 'Rp1.799.000'),
                SizedBox(
                  height: 24,
                ),
                componentWishlist(
                    imgUrl: 'assets/pict (29).png',
                    title: 'SONGESAND',
                    subtitle:
                        'Rngk tmpt tdr dg 2 ktk penyimpanan,\n cokelat, 160x200 cm',
                    price: 'Rp3.499.000'),
                SizedBox(
                  height: 24,
                ),
                componentWishlist(
                    imgUrl: 'assets/pict (28).png',
                    title: 'HEKTAR',
                    subtitle: 'Lampu lantai, abu-abu tua',
                    price: 'Rp1.299.000'),
              ],
            ),
          ),
          _BtmNav(context),
        ],
      ),
    );
  }

  BottomNavigationBar _BtmNav(BuildContext context) {
    return BottomNavigationBar(
        selectedItemColor: Primary,
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        items: [
          BottomNavigationBarItem(
              icon: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeApp(),
                      ),
                    );
                  },
                  child: Icon(Iconsax.home)),
              label: 'Beranda'),
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
          BottomNavigationBarItem(icon: Icon(Iconsax.heart), label: 'Wishlist'),
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
        ]);
  }
}
