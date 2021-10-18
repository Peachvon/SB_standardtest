// To parse this JSON data, do
//
//     final codeJson = codeJsonFromJson(jsonString);

import 'dart:convert';

CodeJson codeJsonFromJson(String str) => CodeJson.fromJson(json.decode(str));

String codeJsonToJson(CodeJson data) => json.encode(data.toJson());

class CodeJson {
  CodeJson({
    required this.group,
    required this.data150,
    required this.data300,
    required this.data600,
    required this.data900,
    required this.data1500,
    required this.data2500,
  });

  String group;
  double data150;
  double data300;
  double data600;
  double data900;
  double data1500;
  double data2500;

  factory CodeJson.fromJson(Map<String, dynamic> json) => CodeJson(
        group: json["Group"],
        data150: json["data150"].toDouble(),
        data300: json["data300"].toDouble(),
        data600: json["data600"].toDouble(),
        data900: json["data900"].toDouble(),
        data1500: json["data1500"].toDouble(),
        data2500: json["data2500"].toDouble(),
      );

  Map<String, dynamic> toJson() => {
        "Group": group,
        "data150": data150,
        "data300": data300,
        "data600": data600,
        "data900": data900,
        "data1500": data1500,
        "data2500": data2500,
      };
}
