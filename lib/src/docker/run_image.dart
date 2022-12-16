import 'package:dcli/dcli.dart' as dcli;
import 'package:dockerize_sidekick_plugin/dockerize_sidekick_plugin.dart';
import 'package:sidekick_core/sidekick_core.dart';

/// Starting the docker image
void runImage({String? port}) {
  final String publicPort = port ?? '8000';
  stopImage(silent: true);
  dcli.startFromArgs(
    'docker',
    [
      'run',
      '-it',
      '--sig-proxy=false',
      '--detach-keys=ctrl-c',
      '--rm',
      '-p',
      '$publicPort:$publicPort',
      '--name',
      mainProject!.name,
      '${mainProject!.name}:dev',
    ],
    terminal: true,
    workingDirectory: repository.root.directory('server').path,
  );
}
