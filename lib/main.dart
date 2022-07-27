import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.grey[100],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 90,
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'John Rambo',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.grey[100],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'john@gmail.com',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: Colors.grey[100],
                          fontWeight: FontWeight.w200,
                          fontStyle: FontStyle.italic),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25),
                          ),
                          color: Colors.yellow),
                      height: 50,
                      width: 500,
                      child: Center(
                        child: Text(
                          'Upgrade to Premium',
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Your Order History',
                      icon: Icons.shopping_bag_outlined,
                      arrowShown: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Help and Support',
                      icon: Icons.help_outline_outlined,
                      arrowShown: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Gift Voucher',
                      icon: Icons.card_giftcard_outlined,
                      arrowShown: true,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ProfileMenuItem(
                      text: 'Logout',
                      icon: Icons.logout_outlined,
                      arrowShown: false,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Icon(
                Icons.settings,
                size: 30,
                color: Colors.grey[100],
              ),
            ),
          ],
        )),
  ));
}

class ProfileMenuItem extends StatelessWidget {
  ProfileMenuItem(
      {required this.text, required this.icon, required this.arrowShown});
  final String text;
  final IconData icon;
  final bool arrowShown;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
          color: Colors.grey[700]),
      height: 50,
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.grey[100],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '$text',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[100],
                ),
              ),
            ],
          ),
          arrowShown
              ? Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Icon(
                    Icons.arrow_forward_outlined,
                    size: 30,
                    color: Colors.grey[100],
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
