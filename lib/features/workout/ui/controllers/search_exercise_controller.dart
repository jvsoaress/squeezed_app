import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:squeezed_app/features/workout/domain/entities/exercise.dart';
import 'package:squeezed_app/features/workout/ui/fixtures.dart';

part 'search_exercise_controller.g.dart';

@lazySingleton
class SearchExerciseController = _SearchExerciseControllerBase with _$SearchExerciseController;

abstract class _SearchExerciseControllerBase with Store {
  @observable
  String searchTerm = '';

  @action
  void searchExercise(String input) => searchTerm = input;

  bool _exerciseTargetMuscleMatchesFilter(Exercise exercise) {
    return selectedMuscles.contains(exercise.targetMuscle);
  }

  bool _exerciseNameMatchesSearchTerm(Exercise exercise) {
    return exercise.name.toLowerCase().contains(searchTerm.toLowerCase());
  }

  @observable
  ObservableSet<String> selectedMuscles = ObservableSet();

  @action
  void selectMuscle(String muscle) => selectedMuscles.add(muscle);

  @action
  void unselectMuscle(String muscle) => selectedMuscles.remove(muscle);

  @computed
  List<Exercise> get matchedExercises {
    List<Exercise> preMatchedExercises = mockExercises;
    if (selectedMuscles.isNotEmpty) {
      preMatchedExercises = preMatchedExercises.where(_exerciseTargetMuscleMatchesFilter).toList();
    }
    if (searchTerm.isNotEmpty) {
      preMatchedExercises = preMatchedExercises.where(_exerciseNameMatchesSearchTerm).toList();
    }
    return preMatchedExercises;
  }
}