import 'package:equatable/equatable.dart';

abstract class NotificationState extends Equatable{}
class NotificationStateInit extends NotificationState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}
class NotificationStateShowMessage extends NotificationState{
  final String message;
  final String type;

  NotificationStateShowMessage({required this.timestamp , required this.message, required this.type});
  final int  timestamp;
  @override
 List <Object?> get props=>[message, type , timestamp];
}