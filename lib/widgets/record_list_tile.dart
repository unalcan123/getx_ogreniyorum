import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/record.dart';

class RecordListTile extends StatelessWidget {
  final Record record;
  const RecordListTile({Key? key, required this.record}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8.0),
        child: ListTile(
          title: _buildWeight(),
          leading: _buildDate(),
          trailing: _buildIcons(),
        ),
      ),
    );
  }

  Row _buildIcons() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.edit,
              color: Colors.grey,
            )),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: Colors.red,
            ))
      ],
    );
  }

  Center _buildWeight() {
    return Center(
      child: Text(
        '${record.weight}',
        style: TextStyle(fontSize: 22),
      ),
    );
  }

  Text _buildDate() => Text(DateFormat('H:m MMM d y').format(record.dateTime));
}
