import 'package:flutter/material.dart';
import 'package:lottery_ticket/spec/styles.dart';

Dialog loopDialog({
  @required var data,
  @required String? title,
}) {
  List<Map<String, dynamic>> i = [];
  List<String> excludes = ["modifyuser", "modifydate", "deleted"];
  var list = data.toJson();
  for (String exclude in excludes) list.remove(exclude);

  list.forEach((key, value) {
    Map<String, dynamic> s;
    s = {"key": key, "value": value};
    i += [s];
  });
  
  return Dialog(
    child: Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!, style: h4BlackBold),
            Divider(),
            for (var value in i) ...[
              Text("${value['key']}", style: h4Black),
              Text("${value['value']}", style: h3Black),
              SizedBox(height: 10),
            ],
          ],
        ),
      ),
    ),
  );
}
