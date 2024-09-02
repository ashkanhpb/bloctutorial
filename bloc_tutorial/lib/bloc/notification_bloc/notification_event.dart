abstract class NotificationEvent{}

class NotificationEventsShowMessage extends NotificationEvent{
  final String message;
  final String type;
  int get timestamp=>DateTime.now().millisecondsSinceEpoch;

  NotificationEventsShowMessage({required this.message, this.type="info"});
} 