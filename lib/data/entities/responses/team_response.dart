import 'package:absensipkl/data/entities/responses/member_response.dart';
import 'package:absensipkl/domain/models/team.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team_response.g.dart';

@JsonSerializable()
class TeamResponse {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "avatar")
  String? avatarLeader;
  @JsonKey(name: "student")
  final String leader;
  @JsonKey(name: "teams")
  List<MemberResponse> members;

  TeamResponse({
    required this.id,
    required this.name,
    required this.leader,
    this.avatarLeader,
    this.image,
    required this.members,
  });

  factory TeamResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamResponseFromJson(json);

  Team toTeam() => Team(id, name, image, avatarLeader, leader,
      members.map((e) => e.toMember()).toList());
}
