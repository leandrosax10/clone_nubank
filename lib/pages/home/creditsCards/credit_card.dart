import 'package:clone_nubank/controllers/controller_home_page.dart';
import 'package:clone_nubank/utils/colors.standard.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Wrap(
      direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.start,
        spacing: 16,
        children: [
          _iconCreditCard(),
          _textCreditCard(),
          _invoice(),
          _invoiceValue(),
          _limitDisponible(),
          _installments(),
        ],
      ),
    );
  }

  _iconCreditCard() {
    return Icon(MdiIcons.creditCard);
  }

  _textCreditCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Cartão de crédito',
          style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
        ),
        Icon(MdiIcons.chevronRight),
      ],
    );
  }

  _invoice() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fatura atual',
          style: TextStyle(color: Colors.grey),
        ),
        SizedBox(height: 12),
      ],
    );
  }

  _invoiceValue() {
    return GetBuilder<ControllerHomePage>(
        init: ControllerHomePage(),
        builder: (controllerHomePage) {
          return Text(
            controllerHomePage.creditCardValue,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          );
        });
  }

  _limitDisponible(){
  return const Text('Limite  disponível de R\$ 4.000,00', 
  style: TextStyle(color: Colors.grey),);
  }

  _installments(){
  return Container(
  margin: const EdgeInsets.only(top: 4, bottom: 16),
  padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
  decoration: BoxDecoration(color: greyColor, borderRadius: BorderRadius.circular(12),),
  child: Container(
    margin: const EdgeInsets.symmetric(horizontal: 6,),
    child: const Text('Parcelar compras', 
    style: TextStyle(fontWeight: FontWeight.bold),),
  ),
  );
  }
}
