import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // String titleInput='';
  // String amountInput='';

  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function handler;

  NewTransaction(this.handler);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              // onChanged: (value) {
              //   titleInput = value;
              // },
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value) {
              //   amountInput = value;
              // },
              controller: amountController,
              keyboardType: TextInputType.number,
            ),
            FlatButton(
              child: Text('ADD TRANSACTION'),
              onPressed: () {
                // print(titleInput);
                // print(amountInput);
                print(titleController.text);
                print(amountController.text);

                handler(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              textColor: Colors.purple,
            )
          ],
        ),
        padding: EdgeInsets.all(10),
      ),
    );
  }
}
