class Message{
  int id;
  String message;
  bool isBot;


  Message({this.id, this.message, this.isBot});

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'message': this.message,
      'isBot': this.isBot,
    };
  }

  factory Message.fromMap(Map<String, dynamic> map) {
    return Message(
      id: map['id'] as int,
      message: map['message'] as String,
      isBot: map['isBot'] as bool,
    );
  }
}