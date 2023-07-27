import 'package:clone_nubank/utils/colors.standard.dart';
import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _income(),
          _saveMoney(),
          _securityLife(),
          _friendsRecomended()
        ],
      ),
    );
  }

  _income() {
    return Container(
    width: MediaQuery.of(context).size.width *  .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text:  TextSpan(
          children: [
          const TextSpan(text: 'Seu ', style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(text: 'informe de\n rendimentos', style: TextStyle(color: backgroundColor, fontSize: 16)),
          const TextSpan(text: ' de 2022 já está...', style: TextStyle(color: Colors.black, fontSize: 16))
          ],
        ),
      ),
    );
  }

 _saveMoney() {
    return Container(
    width: MediaQuery.of(context).size.width *  .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text:  TextSpan(
          children: [
          const TextSpan(text: 'Chegou ', style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(text: 'débito \nautomático da fatura do ...', style: TextStyle(color: backgroundColor, fontSize: 16)),
          ],
        ),
      ),
    );
  }

  _securityLife() {
  return Container(
  width: MediaQuery.of(context).size.width *  .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text:  TextSpan(
          children: [
          const TextSpan(text: 'Conheça ', style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(text: 'Nubank Vida\n ', style: TextStyle(color: backgroundColor, fontSize: 16)),
          const TextSpan(text: 'um seguro simples\n e que cab... ', style: TextStyle(color: Colors.black, fontSize: 16)),
          ],
        ),
      ),
    );

  }

  _friendsRecomended() {
  return Container(
  width: MediaQuery.of(context).size.width *  .7,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: greyColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text:  TextSpan(
          children: [
          const TextSpan(text: 'Salve seus amigos\nda burocracia. ', style: TextStyle(color: Colors.black, fontSize: 16)),
          TextSpan(text: 'Faça um...\n ', style: TextStyle(color: backgroundColor, fontSize: 16)),
          ],
        ),
      ),
    );

  }
}
