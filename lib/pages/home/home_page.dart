import 'package:clone_nubank/pages/home/account/account.dart';
import 'package:clone_nubank/pages/home/creditsCards/my_credits_card_page.dart';
import 'package:clone_nubank/pages/home/investiments/investiments.dart';
import 'package:clone_nubank/pages/home/model/header.dart';
import 'package:clone_nubank/pages/home/security/security_life.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'actions/menu_itens.dart';
import 'creditsCards/credit_card.dart';
import 'notiication/notification_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: backgroundColor,
      appBar: _appBar(),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              AccountNubank(),
              MenuItens(),
              Divider(thickness: 1.6),
              MyCreditCards(),
              Divider(thickness: 1.6),
              NotificationsPage(),
              Divider(thickness: 1.6),
              CreditCard(),
              Divider(thickness: 1.6),
              Investiments(),
              Divider(thickness: 1.6),
              SecurityLife(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(0),
      child: AppBar(
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
    );
  }
}
