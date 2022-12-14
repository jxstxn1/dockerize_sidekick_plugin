import 'package:dockerize_sidekick_plugin/src/util/command_runner.dart';
import 'package:sidekick_core/sidekick_core.dart';

/// Stoping the currently running docker image
void stopImage({
  bool silent = false,
  String? mainProjectName,
  Directory? workingDirectory,
}) {
  final projectName = mainProjectName ?? mainProject!.name;
  commandRunner(
    'docker',
    ['kill', projectName],
    workingDirectory: workingDirectory ?? repository.root.directory('server'),
    silent: silent,
    successMessage: 'Stopped app: $projectName',
  );
}
