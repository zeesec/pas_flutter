// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tugas_akhir_semster/Home.dart';
import 'package:tugas_akhir_semster/profile.dart';
import 'package:tugas_akhir_semster/wishlist.dart';
import 'component.dart';
import 'primaryColor.dart';

class InspirationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 157,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Temukan Inspirasi',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: PrimaryText),
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.search_normal,
                      color: PrimaryText,
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Icon(
                      Iconsax.shopping_cart,
                      color: PrimaryText,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 48,
                  children: [
                    Text(
                      'Inspirasi',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: PrimaryText),
                    ),
                    Text(
                      'Koleksi',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: PrimaryText),
                    ),
                    Text(
                      'Edukasi',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: PrimaryText),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              _Category(),
              SizedBox(
                height: 24,
              ),
              _List_1(),
              SizedBox(
                height: 24,
              ),
              _List_2(),
              SizedBox(
                height: 24,
              ),
              _List_3(),
              SizedBox(
                height: 26,
              ),
              _BtmNav(context)
            ],
          ),
        ],
      ),
    );
  }

  BottomNavigationBar _BtmNav(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Primary,
      items: <BottomNavigationBarItem>[
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
        BottomNavigationBarItem(icon: Icon(Iconsax.coffee), label: 'Inspirasi'),
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
      currentIndex: 1,
    );
  }

  Padding _List_3() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 183,
            child: Column(
              children: [
                Image.asset('assets/pict (19).png'),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Rumah lebih sehat dengan set tempat ...',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: PrimaryText),
                )
              ],
            ),
          ),
          Container(
            width: 183,
            child: Column(
              children: [
                Image.asset('assets/pict (18).png'),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Membuat kamar anak rapi jadi lebih mudah',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: PrimaryText),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _List_2() {
    return Container(
      width: 382,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/pict (17).png'),
          SizedBox(
            height: 16,
          ),
          Text(
            'Hadirkan nuasa elegant dan fancy kedalam \nkamar tidur anda',
            style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w600, color: PrimaryText),
          ),
        ],
      ),
    );
  }

  Padding _List_1() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 183,
            child: Column(
              children: [
                Image.asset('assets/pict (16).png'),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Hunian compact yang nyaman',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: PrimaryText),
                )
              ],
            ),
          ),
          Container(
            width: 183,
            child: Column(
              children: [
                Image.asset('assets/pict (15).png'),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Lakukan 5 hal ini agar sepatumu bebas ...',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: PrimaryText),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _Category() {
    return Container(
      margin: EdgeInsets.only(left: 24, top: 24),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              width: 96,
              height: 48,
              decoration: BoxDecoration(color: Primary),
              child: Text(
                'Semua',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              alignment: Alignment.center,
              width: 127,
              height: 48,
              decoration: BoxDecoration(
                  border: Border.all(strokeAlign: 1, color: SecondLine)),
              child: Text(
                'Ruang Kerja',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: PrimaryText),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              alignment: Alignment.center,
              width: 88,
              height: 48,
              decoration: BoxDecoration(
                  border: Border.all(strokeAlign: 1, color: SecondLine)),
              child: Text(
                'Dapur',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: PrimaryText),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16),
              alignment: Alignment.center,
              width: 152,
              height: 48,
              decoration: BoxDecoration(
                  border: Border.all(strokeAlign: 1, color: SecondLine)),
              child: Text(
                'Ruang Keluarga',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: PrimaryText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
