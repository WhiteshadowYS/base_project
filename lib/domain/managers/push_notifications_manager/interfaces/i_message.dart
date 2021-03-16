/// [IMessage] interface. All messages in app should be extended from this interface.
/// [id] - id of message.
/// [title] - title of message.
/// [content] - content of message.
abstract class IMessage {
  String? id;
  String? title;
  String? content;
}
