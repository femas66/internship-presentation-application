// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamResponse _$TeamResponseFromJson(Map<String, dynamic> json) => TeamResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      leader: json['student'] as String,
      avatarLeader: json['avatar'] as String?,
      image: json['image'] as String?,
      members: (json['teams'] as List<dynamic>)
          .map((e) => MemberResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TeamResponseToJson(TeamResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'avatar': instance.avatarLeader,
      'student': instance.leader,
      'teams': instance.members,
    };
