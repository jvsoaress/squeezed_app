import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';

part 'workout_plan.freezed.dart';

@freezed
class WorkoutPlan with _$WorkoutPlan {
  const WorkoutPlan._();

  factory WorkoutPlan({
    String? id,
    required String title,
    required Set<int> daysOfWeek,
    required List<ExercisePlan> exercises,
    required DateTime creationTimestamp,
    required String? observations,
  }) = _WorkoutPlan;

  List<String> getTargetMuscles() {
    return exercises.map((e) => e.targetMuscle).toList();
  }
}
