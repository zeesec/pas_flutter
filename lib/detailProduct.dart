// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas_akhir_semster/cart.dart';
import 'primaryColor.dart';
import 'component.dart';

class DetailProductPage extends StatelessWidget {
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
                  'ALEX/LAGKAPTEN',
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: PrimaryText),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Iconsax.search_normal,
                  color: PrimaryText,
                  size: 26,
                ),
                SizedBox(width: 24),
                Icon(
                  Icons.share_outlined,
                  color: PrimaryText,
                  size: 26,
                ),
                SizedBox(width: 24),
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
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                  alignment: Alignment.center,
                  margin:
                      EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 16),
                  child: Image.asset('assets/pict (14).png')),
              _Images(),
              SizedBox(
                height: 24,
              ),
              _Title(),
              SizedBox(
                height: 8,
              ),
              _Subtitle(),
              SizedBox(
                height: 12,
              ),
              _Price(),
              SizedBox(
                height: 6,
              ),
              _Ratting(),
              SizedBox(
                height: 23,
              ),
              _Description(),
            ],
          ),
          _BtmAppBar()
        ],
      ),
    );
  }

  Container _Description() {
    return Container(
      width: 382,
      height: 120,
      child: Text(
        'Ruang terbatas bukan berarti Anda harus menolak belajar atau bekerja dari rumah. Meja ini memakan sedikit ruang lantai namun masih memiliki unit laci tempat Anda dapat menyimpan kertas dan barang penting lainnya.',
        style: GoogleFonts.poppins(
            fontSize: 14, fontWeight: FontWeight.w400, color: SecondText),
      ),
    );
  }

  Container _Ratting() {
    return Container(
      width: 382,
      child: Row(
        children: [
          Row(
            children: [
              Icon(
                Iconsax.star1,
                color: Second,
              ),
              Icon(
                Iconsax.star1,
                color: Second,
              ),
              Icon(
                Iconsax.star1,
                color: Second,
              ),
              Icon(
                Iconsax.star1,
                color: Second,
              ),
              Icon(
                Iconsax.star1,
                color: Second,
              ),
            ],
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                Text(
                  '4.5 | Terjual 116',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: SecondText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container _Price() {
    return Container(
      width: 382,
      alignment: Alignment.centerLeft,
      child: Text(
        'Rp1.909.000',
        style: GoogleFonts.poppins(
            fontSize: 24, fontWeight: FontWeight.w700, color: PrimaryText),
      ),
    );
  }

  Container _Subtitle() {
    return Container(
      width: 382,
      alignment: Alignment.centerLeft,
      child: Text(
        'Meja, hijau muda/putih, 120x60 cmALEX/LAGKAPTEN',
        style: GoogleFonts.poppins(
            fontSize: 12, fontWeight: FontWeight.w400, color: SecondText),
      ),
    );
  }

  Container _Title() {
    return Container(
      width: 382,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'ALEX/LAGKAPTEN',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Icon(Iconsax.heart),
        ],
      ),
    );
  }

  BottomAppBar _BtmAppBar() {
    return BottomAppBar(
      color: Colors.white,
      height: 104,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 127,
            height: 56,
            decoration: BoxDecoration(
                border: Border.all(strokeAlign: 1, color: SecondLine)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Iconsax.minus,
                  color: Line,
                ),
                Text('1'),
                Icon(
                  Iconsax.add,
                  color: Primary,
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 237,
            height: 56,
            decoration: BoxDecoration(color: Primary),
            child: Text(
              'Tambah ke Keranjang',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  Container _Images() {
    return Container(
      width: 382,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/pict (20).png'),
          Image.asset('assets/pict (21).png'),
          Image.asset('assets/pict (22).png'),
          Image.asset('assets/pict (23).png'),
          Image.asset('assets/pict (24).png'),
        ],
      ),
    );
  }
}
