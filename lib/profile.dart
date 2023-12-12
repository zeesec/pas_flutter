// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:tugas_akhir_semster/Home.dart';
import 'package:tugas_akhir_semster/cart.dart';
import 'package:tugas_akhir_semster/inspirasi.dart';
import 'package:tugas_akhir_semster/wishlist.dart';
import 'component.dart';
import 'primaryColor.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 74, left: 24, right: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Menu Akun',
                      style: GoogleFonts.poppins(
                          color: PrimaryText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                    Icon(
                      Iconsax.setting_2,
                      color: PrimaryText,
                    ),
                  ],
                ),
                SizedBox(
                  height: 26,
                ),
                _namaAkun(),
                SizedBox(
                  height: 24,
                ),
                _listProfile(context),
                _listProfile2(context),
                _listProfile3(context),
                _listProfile4(context),
                _listProfile5(context),
              ],
            ),
          ),
          _btmNav(context)
        ],
      ),
    );
  }

  BottomNavigationBar _btmNav(BuildContext context) {
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
            icon: Icon(Iconsax.profile_circle), label: 'Profile'),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: 3,
    );
  }

  GestureDetector _listProfile2(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => CartPage(),
            ));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 74,
        decoration: BoxDecoration(
            border: Border.symmetric(
                horizontal: BorderSide(width: 1, color: SecondLine))),
        child: Row(
          children: [
            Icon(Iconsax.box),
            SizedBox(
              width: 16,
            ),
            Text(
              'Pesanan',
              style: GoogleFonts.poppins(
                  color: PrimaryText,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  Container _listProfile3(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 74,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(width: 1, color: SecondLine))),
      child: Row(
        children: [
          Icon(Iconsax.star),
          SizedBox(
            width: 16,
          ),
          Text(
            'Ulasan',
            style: GoogleFonts.poppins(
                color: PrimaryText, fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Container _listProfile4(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 74,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(width: 1, color: SecondLine))),
      child: Row(
        children: [
          Icon(Iconsax.gift),
          SizedBox(
            width: 16,
          ),
          Text(
            'Reward Saya',
            style: GoogleFonts.poppins(
                color: PrimaryText, fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Container _listProfile5(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 74,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(width: 1, color: SecondLine))),
      child: Row(
        children: [
          Icon(Iconsax.info_circle),
          SizedBox(
            width: 16,
          ),
          Text(
            'Bantuan',
            style: GoogleFonts.poppins(
                color: PrimaryText, fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Container _listProfile(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 74,
      decoration: BoxDecoration(
          border: Border.symmetric(
              horizontal: BorderSide(width: 1, color: SecondLine))),
      child: Row(
        children: [
          Icon(Iconsax.profile_circle),
          SizedBox(
            width: 16,
          ),
          Text(
            'Profile Saya',
            style: GoogleFonts.poppins(
                color: PrimaryText, fontWeight: FontWeight.w500, fontSize: 16),
          ),
        ],
      ),
    );
  }

  Row _namaAkun() {
    return Row(
      children: [
        Image.asset('assets/pict (30).png'),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              children: [
                Row(
                  children: [
                    Text(
                      'Ramzi Respati',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: PrimaryText),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '160002359102020',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: SecondText),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
