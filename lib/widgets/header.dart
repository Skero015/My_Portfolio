/*import 'package:flutter/material.dart';
import 'package:salt_garden/config/responsive_layout.dart';
import 'package:salt_garden/config/styleguide_web.dart';
import 'package:salt_garden/config/widget_size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key? key,
    required this.title,
    required this.tapEvent
  }) : super(key: key);

  final String title;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: tapEvent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(title, style: GoogleFonts.montserrat(
          fontSize: 1.1 * SizeConfig.textMultiplier,
          color: Colors.black54,
          letterSpacing: 1.03,
          fontWeight: FontWeight.w400,
        ),),
      ),
    );
  }
}*/

/*
class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
      child: Row(
        children: [
          Text('Kamogelo Seima', style: AppThemeWeb.regularTextBold,),
          const Spacer(),
          ResponsiveLayout(
            mobile: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                }
            ),
            desktop: Row(
              children: [
                MenuItem(
                  title: 'Home',
                  tapEvent: () {},
                ),
                MenuItem(
                  title: 'Previous Work',
                  tapEvent: () {},
                ),
                MenuItem(
                  title: 'Contact',
                  tapEvent: () {},
                ),
                MenuItem(
                  title: '          ',
                  tapEvent: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/

