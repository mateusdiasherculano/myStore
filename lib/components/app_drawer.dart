import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/utils/app_routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            title: const Text('Bem vindo Usuário'),
            automaticallyImplyLeading: false,
          ),
          const Divider(),
          ListTile(
            leading:const Icon(Icons.shop),
            title:const Text('Loja'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoute.HOME,
              );
            },
          ),
          const Divider(),
          ListTile(
            leading:const Icon(Icons.payment),
            title:const Text('Pedidos'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoute.ORDERS,
              );
            },
          ),
          const Divider(),
          ListTile(
            leading:const Icon(Icons.edit),
            title:const Text('Gerenciar Produtos'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(
                AppRoute.PRODUCTS,
              );
            },
          ),
        ],
      ),
    );
  }
}
