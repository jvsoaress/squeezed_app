import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise_plan.dart';
import 'package:squeezed_app/features/workout/ui/choose_exercises_page.dart';
import 'package:squeezed_app/features/workout/ui/exercise_plan_page.dart';
import 'package:squeezed_app/features/workout/ui/review_workout_plan_page.dart';

import 'ui/create_workout_page.dart';
import 'ui/workout_page.dart';

const workoutTab = AutoRoute(
  name: 'WorkoutTab',
  page: EmptyRouterPage,
  children: [
    AutoRoute(page: WorkoutPage, initial: true),
    AutoRoute(page: CreateWorkoutPage),
    AutoRoute(page: ChooseExercisesPage),
    AutoRoute<ExercisePlan>(page: ExercisePlanPage),
    AutoRoute(page: ReviewWorkoutPlanPage),
  ],
);
