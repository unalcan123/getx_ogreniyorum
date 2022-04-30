import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_ogreniyorum/view_models/controller.dart';
import 'package:getx_ogreniyorum/widgets/record_list_tile.dart';

class GraphScreenHistory extends StatefulWidget {
  GraphScreenHistory({Key? key}) : super(key: key);

  @override
  State<GraphScreenHistory> createState() => _GraphScreenHistoryState();
}

class _GraphScreenHistoryState extends State<GraphScreenHistory> {
  final Controller _controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  onPressed: _controller.addRecord, icon: Icon(Icons.add))
            ],
            centerTitle: true,
            title: const Text('Graph History'),
          ),
          body: _controller.records.isEmpty
              ? Center(
                  child: Container(child: Text('please add some  records')))
              : ListView(
                  physics: BouncingScrollPhysics(),
                  children: _controller.records
                      .map(
                        (record) => RecordListTile(record: record),
                      )
                      .toList(),
                ),
        ));
  }
}
