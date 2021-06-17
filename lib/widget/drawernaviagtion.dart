import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newcheck/Screens/Banks.dart';
import 'package:newcheck/Screens/ContactPage.dart';
import 'package:newcheck/Screens/Defence.dart';
import 'package:newcheck/Screens/Edu.dart';
import 'package:newcheck/Screens/Engineering.dart';
import 'package:newcheck/Screens/Medical.dart';
import 'package:newcheck/Screens/Otherindia.dart';
import 'package:newcheck/Screens/Railways.dart';
import 'package:newcheck/Screens/SSC.dart';
import 'package:newcheck/Screens/Teaching.dart';
import 'package:newcheck/Screens/UPSC.dart';
import 'package:newcheck/Screens/allstate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:community_material_icon/community_material_icon.dart';

class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: [
                  Text(
                    "StateJob",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.mcLaren(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800),
                  ),
                  Expanded(
                    child: Image.asset(
                      "images/icon.png",
                      height: 60,
                      width: 60,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Allstate()),
                  );
                },
                title: Text('All States'),
                leading: Icon(
                  Icons.map,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Banks()),
                  );
                },
                title: Text('Banks'),
                leading: Icon(
                  CommunityMaterialIcons.bank,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Defence()),
                  );
                },
                title: Text('Defence'),
                leading: Icon(
                  CommunityMaterialIcons.cryengine,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Engineering()),
                  );
                },
                title: Text('Engineering'),
                leading: Icon(
                  CommunityMaterialIcons.engine,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Medical()),
                  );
                },
                title: Text('Medical'),
                leading: Icon(
                  CommunityMaterialIcons.doctor,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Railways()),
                  );
                },
                title: Text('Railway'),
                leading: Icon(
                  CommunityMaterialIcons.train,
                  color: Colors.blue,
                )),
            ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SSC()),
                );
              },
              title: Text('SSC'),
              leading: Icon(
                Icons.book,
                color: Colors.blue,
              ),
            ),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Teaching()),
                  );
                },
                title: Text('Teaching'),
                leading: Icon(
                  CommunityMaterialIcons.teach,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UPSCScreen()),
                  );
                },
                title: Text('UPSC'),
                leading: Icon(
                  CommunityMaterialIcons.account_details,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtherIndia()),
                  );
                },
                title: Text('Other All India'),
                leading: Icon(
                  CommunityMaterialIcons.format_indent_increase,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Edu()),
                  );
                },
                title: Text('Edu'),
                leading: Icon(
                  CommunityMaterialIcons.book_alphabet,
                  color: Colors.blue,
                )),
            ListTile(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()),
                  );
                },
                title: Text('Contact Us'),
                leading: Icon(
                  CommunityMaterialIcons.contacts,
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}
