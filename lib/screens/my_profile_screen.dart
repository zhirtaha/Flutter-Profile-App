import 'package:flutter/material.dart';
import 'package:flutter_profile_app/screens/message_screen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(35.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: HexColor('BDFFD7'), width: 4.0),
                ),
                child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://media.istockphoto.com/photos/portrait-young-confident-smart-asian-businessman-look-at-camera-and-picture-id1288538088?b=1&k=20&m=1288538088&s=170667a&w=0&h=3efMku7kSXUhpVrErAVVgxp6G91tRZ_5seygOn68RnE='),
                    radius: 65.0),
              ),
              SizedBox(
                height: 36.0,
              ),
              Text(
                'Full Name',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
              SizedBox(height: 16.0),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam non mauris a eros facilisis tempor et ut leo. Nulla facilisi. Morbi et gravida ipsum, quis convallis tortor. Vestibulum lacinia.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Roboto'),
              ),
              SizedBox(
                height: 31.0,
              ),
              Column(
                children: [
                  Material(
                    elevation: 6.0,
                    shadowColor: HexColor('F3F2FF'),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        horizontalTitleGap: 55.0,
                        leading: FaIcon(FontAwesomeIcons.linkedin),
                        title: Text(
                          'Linkedin profile',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                        ),
                        iconColor: Colors.black,
                        tileColor: HexColor('F3F2FF')),
                  ),
                  SizedBox(height: 16.0),
                  Material(
                    elevation: 6.0,
                    shadowColor: HexColor('C7E4FF'),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        horizontalTitleGap: 55.0,
                        leading: FaIcon(FontAwesomeIcons.facebook),
                        title: Text(
                          'Facebook profile',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                        ),
                        iconColor: Colors.black,
                        tileColor: HexColor('C7E4FF')),
                  ),
                  SizedBox(height: 16.0),
                  Material(
                    elevation: 6.0,
                    shadowColor: HexColor('FFF2F2'),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        horizontalTitleGap: 55.0,
                        leading: FaIcon(FontAwesomeIcons.instagram),
                        title: Text(
                          'Instagram profile',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                        ),
                        iconColor: Colors.black,
                        tileColor: HexColor('FFF2F2')),
                  ),
                  SizedBox(height: 16.0),
                  Material(
                    elevation: 6.0,
                    shadowColor: HexColor('FFFBF2'),
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0)),
                        horizontalTitleGap: 55.0,
                        leading: FaIcon(FontAwesomeIcons.google),
                        title: Text(
                          'My Website',
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                        ),
                        iconColor: Colors.black,
                        tileColor: HexColor('FFFBF2')),
                  ),
                ],
              ),
              SizedBox(height: 35.0),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FloatingActionButton(
                      backgroundColor: Colors.green[100],
                      onPressed: () {},
                      child: FaIcon(
                        FontAwesomeIcons.whatsapp,
                        color: Colors.green,
                        size: 28.0,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: HexColor('C7E4FF'),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return MessageScreen();
                          },
                        ));
                      },
                      child: FaIcon(
                        FontAwesomeIcons.envelope,
                        color: HexColor('949494'),
                        size: 28.0,
                      ),
                    ),
                    FloatingActionButton(
                      backgroundColor: HexColor('FFF2F2'),
                      onPressed: () {},
                      child: FaIcon(
                        FontAwesomeIcons.message,
                        color: Colors.green,
                        size: 28.0,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
