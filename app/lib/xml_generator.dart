import 'dart:convert';
import 'package:xml2json/xml2json.dart';
import 'package:xml_map_converter/xml_map_converter.dart';

class XmltoJsonGenerator {
  static final XmltoJsonGenerator _instance = XmltoJsonGenerator._internal();
  static XmltoJsonGenerator get instance => _instance;
  late final Xml2Json _xml2json;
  XmltoJsonGenerator._internal() {
    _xml2json = Xml2Json();
  }
  Map<String, dynamic> convertToJson({required String xmlString}) {
    _xml2json.parse(xmlString);
    var jsonString = _xml2json.toGData();
    var data = jsonDecode(jsonString);
    return data;
  }

  Future<String> convertToXml({required Map<String, dynamic> toJson}) async {
    final xml = Map2Xml(toJson);
    final xmlData = xml.transform();
    return xmlData;
  }
}
