class LoginResponse {
  final int id;
  final String email;
  final String tokenType;
  final String accessToken;

  LoginResponse({
    required this.id,
    required this.email,
    required this.tokenType,
    required this.accessToken,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      id: json['id'],
      email: json['email'],
      tokenType: json['token_type'],
      accessToken: json['access_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'token_type': tokenType,
      'access_token': accessToken,
    };
  }
}
