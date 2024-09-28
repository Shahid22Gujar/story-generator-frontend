import 'package:nowa_runtime/nowa_runtime.dart';

@NowaGenerated()
class FeedbackModel {
  @NowaGenerated({'loader': 'auto-from-json'})
  factory FeedbackModel.fromJson({required Map<String, dynamic> json}) {
    return FeedbackModel(
      id: json['id'],
      storyReference: json['story_reference'],
      feedback: json['feedback'],
    );
  }

  @NowaGenerated({'loader': 'auto-constructor'})
  const FeedbackModel({this.id, this.storyReference, this.feedback});

  @NowaGenerated({
    'key': ['feedback']
  })
  final String? feedback;

  @NowaGenerated({
    'key': ['story_reference']
  })
  final String? storyReference;

  @NowaGenerated({
    'key': ['id']
  })
  final String? id;

  @NowaGenerated({'loader': 'auto-to-json'})
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'story_reference': storyReference,
      'feedback': feedback,
    };
  }

  @NowaGenerated({'loader': 'auto-copy-with'})
  FeedbackModel copyWith(
      {String? id, String? storyReference, String? feedback}) {
    return FeedbackModel(
      id: id ?? this.id,
      storyReference: storyReference ?? this.storyReference,
      feedback: feedback ?? this.feedback,
    );
  }
}
