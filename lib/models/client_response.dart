import 'package:tots_ayala_lucas/models/client_model.dart';

class ClientResponse {
  final List<Client> data;

  ClientResponse({required this.data});

  factory ClientResponse.fromJson(Map<String, dynamic> json) {
    var list = json['data'] as List;
    List<Client> clientList = list.map((i) => Client.fromJson(i)).toList();
    return ClientResponse(data: clientList);
  }

  Map<String, dynamic> toJson() {
    return {
      'data': data.map((client) => client.toJson()).toList(),
    };
  }
}
