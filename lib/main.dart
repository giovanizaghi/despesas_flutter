import 'package:despesas_flutter/components/transaction_form.dart';
import 'package:despesas_flutter/components/transaction_list.dart';
import 'package:despesas_flutter/components/transaction_user.dart';
import 'package:despesas_flutter/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

main() => runApp(DespesasApp());

class DespesasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Despesas pessoais"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              child: Text("Gráfico"),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          TransactionUser()
        ],
      ),
    );
  }
}
