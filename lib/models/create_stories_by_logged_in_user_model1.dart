import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class CreateStoriesByLoggedInUserModel1 {
  @NowaGenerated({'loader': 'auto-from-json'})
  factory CreateStoriesByLoggedInUserModel1.fromJson(
      {required Map<String, dynamic> json}) {
    return CreateStoriesByLoggedInUserModel1(
      id: json['id'],
      genre: json['genre'],
      timePeriod: json['time_period'],
      character: json['character'],
      writingStyle: json['writing_style'],
      storyText: json['story_text'],
      storyAudio: json['story_audio'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      isAudioToGenerate: json['is_audio_to_generate'],
      isRegenerate: json['is_regenerate'],
    );
  }

  @NowaGenerated({'loader': 'auto-constructor'})
  const CreateStoriesByLoggedInUserModel1(
      {this.id,
      this.genre,
      this.timePeriod,
      this.character,
      this.writingStyle,
      this.storyText,
      this.storyAudio,
      this.createdAt,
      this.updatedAt,
      this.isAudioToGenerate,
      this.isRegenerate});

  @NowaGenerated({
    'key': ['is_regenerate']
  })
  final bool? isRegenerate;

  @NowaGenerated({
    'key': ['is_audio_to_generate']
  })
  final bool? isAudioToGenerate;

  @NowaGenerated({
    'key': ['updated_at']
  })
  final String? updatedAt;

  @NowaGenerated({
    'key': ['created_at']
  })
  final String? createdAt;

  @NowaGenerated({
    'key': ['story_audio']
  })
  final dynamic storyAudio;

  @NowaGenerated({
    'key': ['story_text']
  })
  final String? storyText;

  @NowaGenerated({
    'key': ['writing_style']
  })
  final String? writingStyle;

  @NowaGenerated({
    'key': ['character']
  })
  final String? character;

  @NowaGenerated({
    'key': ['time_period']
  })
  final String? timePeriod;

  @NowaGenerated({
    'key': ['genre']
  })
  final dynamic genre;

  @NowaGenerated({
    'key': ['id']
  })
  final String? id;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'genre': genre,
      'time_period': timePeriod,
      'character': character,
      'writing_style': writingStyle,
      'story_text': storyText,
      'story_audio': storyAudio,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'is_audio_to_generate': isAudioToGenerate,
      'is_regenerate': isRegenerate,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  CreateStoriesByLoggedInUserModel1 copyWith(
      {String? id,
      dynamic genre,
      String? timePeriod,
      String? character,
      String? writingStyle,
      String? storyText,
      dynamic storyAudio,
      String? createdAt,
      String? updatedAt,
      bool? isAudioToGenerate,
      bool? isRegenerate}) {
    return CreateStoriesByLoggedInUserModel1(
      id: id ?? this.id,
      genre: genre ?? this.genre,
      timePeriod: timePeriod ?? this.timePeriod,
      character: character ?? this.character,
      writingStyle: writingStyle ?? this.writingStyle,
      storyText: storyText ?? this.storyText,
      storyAudio: storyAudio ?? this.storyAudio,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isAudioToGenerate: isAudioToGenerate ?? this.isAudioToGenerate,
      isRegenerate: isRegenerate ?? this.isRegenerate,
    );
  }
}
