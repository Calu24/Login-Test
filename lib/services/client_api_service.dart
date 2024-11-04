import 'dart:convert';

import 'package:tots_ayala_lucas/models/client_model.dart';
import 'package:http/http.dart' as http;
import 'package:tots_ayala_lucas/models/client_response.dart';

class ClientApiService {
  final _baseUrl =
      'https://myback-execute-dot-my-back-401316.uc.r.appspot.com/6-tots-test';
  final _token =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL215YmFjay50b3RzLmFnZW5jeSIsImF1ZCI6Imh0dHBzOi8vdGVzdC50b3RzLmFnZW5jeSIsInVpZCI6IjMiLCJpZCI6IjMiLCJpYXQiOjE3MzAyODU5ODMsImV4cCI6MTczMjg3Nzk4M30.iE55If04QnqewHtW57c0RVSqBbf7cBCOSV3OXZvpnKM';

  Future<List<Client>> fetchClients() async {
    final response = await http.get(
      Uri.parse('$_baseUrl/clients'),
      headers: {'Authorization': _token},
    );

    if (response.statusCode == 200) {
      final jsonData = response.body;
      final clients = ClientResponse.fromJson(json.decode(jsonData));
      return clients.data;
    } else {
      throw Exception('Failed to fetch clients');
    }
  }

  Future<String> login(String username, String password) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/login'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'username': username, 'password': password}),
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return jsonData['token'];
    } else {
      throw Exception('Failed to login');
    }
  }

  // Future<Client> fetchClientById(int id) async {
  //   // Fetch client by ID from API
  // }

  // Future<Client> createClient(Client client) async {
  //   // Create client in API
  // }

  // Future<Client> updateClient(Client client) async {
  //   // Update client in API
  // }

  // Future<void> deleteClient(int id) async {
  //   // Delete client in API
  // }
}
