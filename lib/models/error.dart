class ErrorMessage {
  final String message;

  ErrorMessage({required this.message});

  factory ErrorMessage.fromJson(Map<String, dynamic> json) =>
      ErrorMessage(message: json["message"]);
}
