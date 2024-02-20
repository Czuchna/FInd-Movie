import 'package:auto_route/auto_route.dart';
import 'package:find_movie/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:find_movie/widgets/const.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PrimaryScreen extends StatelessWidget {
  const PrimaryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Ink(
            decoration: const ShapeDecoration(
              color: Colors.white,
              shape: CircleBorder(),
            ),
            child: IconButton(
              icon: SvgPicture.asset(
                'assets/icons/user.svg',
                color: AppColors.iconColor,
              ),
              onPressed: () {},
            ),
          ),
        ),
        title: GestureDetector(
          onTap: () {
            context.router.push(const PrimaryScreenRoute());
          },
          child: Opacity(
            opacity: 0.3,
            child: Image.asset(
              'assets/images/logo.png',
              height: 60,
              width: 60,
            ),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              showMenu(
                context: context,
                position: RelativeRect.fromLTRB(100.0, 100.0, 0.0, 0.0),
                items: [
                  const PopupMenuItem<String>(
                    value: 'profile',
                    child: Text('Profil'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'settings',
                    child: Text('Ustawienia'),
                  ),
                ],
              );
            },
          ),
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/pulpit.png"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                context.router.push(const LoginScreenRoute());
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.fontButtomColor,
                  backgroundColor: AppColors.appColor,
                  fixedSize: const Size(200, 200),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'KATEGORIE',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: ElevatedButton(
              onPressed: () {
                context.router.push(const DashboardScreenRoute());
              },
              style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF251605),
                  backgroundColor: AppColors.appColor,
                  fixedSize: const Size(170, 50)),
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    'WYLOGUJ SIĘ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          // Możesz dodać więcej widgetów w Stack, jeśli potrzebujesz.
        ],
      ),
    );
  }
}
