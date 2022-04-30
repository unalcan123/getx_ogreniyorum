import 'package:get/get.dart';
import 'package:getx_ogreniyorum/models/record.dart';

class Controller extends GetxController {
  RxList<Record> records = <Record>[
    /* Record(weight: 80, dateTime: DateTime.now(), note: 'AAA'),
    Record(weight: 81, dateTime: DateTime.now(), note: 'BBB'),
    Record(weight: 82, dateTime: DateTime.now(), note: 'CCC'),
    Record(weight: 83, dateTime: DateTime.now(), note: 'DDD'),*/
  ].obs;

  void addRecord() {
    records.add(Record(weight: 800, dateTime: DateTime.now(), note: '555'));
    print(records.length);
  }
}
