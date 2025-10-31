import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';


class customappbar extends StatelessWidget implements PreferredSizeWidget{
  const customappbar({super.key,
  required this.title,
  required this.prefix,
  required this.suffix,
  }
      );
  final String title ;
  final String prefix;
  final String suffix ;

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);


  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight:preferredSize.height,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset(prefix),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(suffix),
        ),
      ],
      title: Text(
        title,
        style: GoogleFonts.inter(
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      elevation: 0,
    );
  }
}

