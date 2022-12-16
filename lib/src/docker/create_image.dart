import 'package:dockerize_sidekick_plugin/src/util/command_runner.dart';
import 'package:sidekick_core/sidekick_core.dart';

/// Creates a docker image
void createDockerImage() {
  print(
    green('Creating image ${mainProject!.name}:dev'),
  );
  commandRunner(
    'docker',
    ['build', '-t', '${mainProject!.name}:dev', '.'],
    workingDirectory: repository.root.directory('server'),
    successMessage: 'Created image ${mainProject!.name}:dev',
  );
}
