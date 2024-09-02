import 'package:equatable/equatable.dart';

abstract class NotificationState extends Equatable{}
class NotificationStateInit extends NotificationState{
  @override
  // TODO: implement props
  List<Object?> get props => [];

}
class NotificationStateShowMessage extends NotificationState{
  final String message;
  final String type;
  final int  timestamp;
  NotificationStateShowMessage({required this.timestamp , required this.message, required this.type});
  
  @override
 List <Object?> get props=>[message, type , timestamp];
}