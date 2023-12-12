// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'primaryColor.dart';

class componentList extends StatelessWidget {
  final String imgUrl;
  final String caption;

  const componentList({
    super.key,
    required this.imgUrl,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imgUrl),
            SizedBox(
              height: 6,
            ),
            Text(
              caption,
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600, color: PrimaryText),
            ),
          ],
        ),
      ],
    );
  }
}

class componentList2 extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final String price;

  const componentList2({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imgUrl),
          SizedBox(
            height: 12,
          ),
          Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w600, color: PrimaryText),
          ),
          SizedBox(
            height: 6,
          ),
          Container(
            width: 146,
            height: 40,
            child: Text(
              subtitle,
              style: GoogleFonts.poppins(color: SecondText),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            price,
            style: GoogleFonts.poppins(
                fontSize: 16, fontWeight: FontWeight.w600, color: PrimaryText),
          ),
          SizedBox(
            width: 24,
          ),
        ],
      ),
    );
  }
}

class componentList3 extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final Color BgColor;

  const componentList3({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.BgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16, right: 16, left: 16),
      width: 183,
      height: 232,
      decoration: BoxDecoration(color: BgColor),
      child: Column(
        children: [
          Image.asset(imgUrl),
          SizedBox(
            height: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 158,
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                width: 158,
                height: 60,
                child: Text(
                  subtitle,
                  style:
                      GoogleFonts.poppins(color: Colors.white.withOpacity(0.9)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class componentWishlist extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final String price;

  const componentWishlist({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 146,
        child: Row(
          children: [
            Image.asset(imgUrl),
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
                          title,
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: PrimaryText),
                        ),
                        Icon(
                          Icons.more_vert_rounded,
                          color: PrimaryText,
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      subtitle,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: SecondText),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      price,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: PrimaryText),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Container(
                  width: 340,
                  height: 38,
                  decoration: BoxDecoration(
                      border: Border.all(color: Primary, strokeAlign: 1)),
                  child: Center(
                    child: Text(
                      'Tambah ke Keranjang',
                      style: GoogleFonts.poppins(
                        color: Primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class componentCart extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  final String price;

  const componentCart({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Image.asset(imgUrl),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: PrimaryText),
                  ),
                  Text(
                   subtitle,
                    style: GoogleFonts.poppins(color: SecondText),
                  ),
                  Text(
                   price,
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: PrimaryText),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 72,
              height: 38,
              decoration: BoxDecoration(
                  border: Border.all(color: SecondLine, width: 1)),
              child: Icon(Iconsax.trash),
            ),
            SizedBox(
              width: 29,
            ),
            Container(
              width: 240,
              height: 38,
              decoration: BoxDecoration(
                  border: Border.all(color: SecondLine, width: 1)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '-',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: SecondText,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '1',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: PrimaryText,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '+',
                      style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Primary,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
