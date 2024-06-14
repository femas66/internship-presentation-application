import 'package:absensipkl/domain/models/member.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'team.g.dart';
part 'team.freezed.dart';

@freezed
class Team with _$Team {
  factory Team(
    int id,
    String name,
    String? image,
    String? avatarLeader,
    String leader,
    List<Member> members,
  ) = _Team;

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);
}
