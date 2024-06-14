import 'package:absensipkl/domain/models/member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_response.g.dart';

@JsonSerializable()
class MemberResponse {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "avatar")
  final String avatar;

  MemberResponse({
    required this.id,
    required this.name,
    required this.avatar,
  });

  factory MemberResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberResponseFromJson(json);

  Member toMember() => Member(id, name, avatar);
}
