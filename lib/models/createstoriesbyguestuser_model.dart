import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class CreateStoriesByGuestUserModel {
  @NowaGenerated({'loader': 'auto-constructor'})
  const CreateStoriesByGuestUserModel(
      {this.timePeriod,
      this.character,
      this.writingStyle,
      this.storyText,
      this.storyAudio,
      this.createdAt,
      this.updatedAt,
      this.isAudioToGenerate});

  @NowaGenerated({'loader': 'auto-from-json'})
  factory CreateStoriesByGuestUserModel.fromJson(
      {required Map<String, dynamic> json}) {
    return CreateStoriesByGuestUserModel(
      timePeriod: json['time_period'],
      character: json['character'],
      writingStyle: json['writing_style'],
      storyText: json['story_text'],
      storyAudio: json['story_audio'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      isAudioToGenerate: json['is_audio_to_generate'],
    );
  }

  @NowaGenerated({'key': 'time_period'})
  final String? timePeriod;

  final String? character;

  @NowaGenerated({'key': 'writing_style'})
  final String? writingStyle;

  @NowaGenerated({'key': 'story_text'})
  final String? storyText;

  @NowaGenerated({'key': 'story_audio'})
  final dynamic storyAudio;

  @NowaGenerated({'key': 'created_at'})
  final String? createdAt;

  @NowaGenerated({'key': 'updated_at'})
  final String? updatedAt;

  @NowaGenerated({'key': 'is_audio_to_generate'})
  final bool? isAudioToGenerate;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'time_period': timePeriod,
      'character': character,
      'writing_style': writingStyle,
      'story_text': storyText,
      'story_audio': storyAudio,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'is_audio_to_generate': isAudioToGenerate,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  CreateStoriesByGuestUserModel copyWith(
      {String? timePeriod,
      String? character,
      String? writingStyle,
      String? storyText,
      dynamic storyAudio,
      String? createdAt,
      String? updatedAt,
      bool? isAudioToGenerate}) {
    return CreateStoriesByGuestUserModel(
      timePeriod: timePeriod ?? this.timePeriod,
      character: character ?? this.character,
      writingStyle: writingStyle ?? this.writingStyle,
      storyText: storyText ?? this.storyText,
      storyAudio: storyAudio ?? this.storyAudio,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isAudioToGenerate: isAudioToGenerate ?? this.isAudioToGenerate,
    );
  }
}
