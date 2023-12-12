// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'component.dart';
import 'primaryColor.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: PrimaryText),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'Keranjang',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: PrimaryText),
                ),
              ],
            ),
            Icon(
              Iconsax.heart,
              color: PrimaryText,
            ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '2',
                          style: GoogleFonts.poppins(
                              color: PrimaryText, fontWeight: FontWeight.w600)),
                      TextSpan(
                          text: 'Barang',
                          style: GoogleFonts.poppins(
                              color: PrimaryText, fontWeight: FontWeight.w400)),
                    ])),
                    Text(
                      'Hapus Semua',
                      style: GoogleFonts.poppins(
                          color: Primary, fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  children: [
                    componentCart(
                        imgUrl: 'assets/Pict (25).png',
                        title: 'ALEX',
                        subtitle: 'Unit laci, abu-abu toska,\n36x70 cm',
                        price: 'Rp1.350.000'),
                    SizedBox(
                      height: 24,
                    ),
                    componentCart(
                        imgUrl: 'assets/pict (31).png',
                        title: 'MACKAPÄR',
                        subtitle: 'Kabinet/tempat sepatu, putih,\n80x35x102 cm',
                        price: 'Rp1.499.000'),
                    SizedBox(
                      height: 200,
                    ),
                  ],
                ),
              ],
            ),
          ),
          BottomAppBar(
            color: Colors.white,
            height: 110,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 56,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: SecondText),
                        ),
                        Text(
                          'Rp2.849.000',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: PrimaryText),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 181,
                    height: 56,
                    decoration: BoxDecoration(color: Primary),
                    child: Text(
                      'Beli',
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
