import 'package:clone_nubank/utils/colors.standard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SecurityLife extends StatelessWidget {
  const SecurityLife({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Wrap(
        direction: Axis.vertical,
        spacing: 12,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: [
          const Text(
            'Seguros',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'Proteção para você cuidar do que importa',
            style: TextStyle(color: Colors.grey),
          ),
          _securityButton(context),
        ],
      ),
    );
  }

  _securityButton(BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey,
      ),
      margin: const EdgeInsets.only(bottom: 12, right:16),
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(MdiIcons.heartOutline),
              const SizedBox(width: 12),
              const Text(
                'Seguro de vida',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            'Conhecer',
            style:
                TextStyle(color: backgroundColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
