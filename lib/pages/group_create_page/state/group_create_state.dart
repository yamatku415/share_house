import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_create_state.freezed.dart';

@freezed
class GroupCreate with _$GroupCreate {
  const factory GroupCreate({String? groupId}) = _GroupCreate;
}
