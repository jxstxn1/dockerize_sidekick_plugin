# dockerize_sidekick_plugin

A plugin for [sidekick CLIs](https://pub.dev/packages/sidekick).  

## Description

This plugin for [sidekick](https://pub.dev/packages/sidekick) wants to make it as easy as possible to deploy your flutter web app as a docker container.

## Installation

### Kickstart

with having [docker](https://www.docker.com/) and [sidekick](https://pub.dev/packages/sidekick) installed

```bash
<<your_cli>> sidekick plugins install dockerize_sidekick_plugin
<<your_cli>> docker run -b
```

### Docker

To run this locally you need [Docker](https://docs.docker.com/get-docker/) installed on your machine.

### The commands

#### Install the plugin

```bash
<<your_cli>> sidekick plugins install dockerize_sidekick_plugin
```

#### Build the docker image

```bash
<<your_cli>> docker build
```

With the `--docker-only` flag you just build the docker container without the flutter build command.

The build command can choose between different environments.
The default environment is `dev`.
You can change the environment with the `--env` flag.

You can customize the build process in the commands/docker/build_command.dart file.

#### Run the docker image locally

```bash
<<your_cli>> docker run
```

You can detach and kill the container by pressing `Ctrl + C`.

This will run your app and makes it accessible at `localhost:8000`.
With the `--background` flag you can run the container in the background.
With the `-b, --build-all` flag you can execute the build command before running the container.
With the `-p, --port` flag you can specify the port on which the app is accessible.
With the `--build-docker` flag you just build the docker container without the flutter build command.

The build command can choose between different environments.
The default environment is `dev`.
You can change the environment with the `--env` flag.

#### Stop the container

```bash
<<your_cli>> docker stop
```

#### Deploy the docker image

Deploying the docker image depends on the environment you are deploying to.
Here are the official guides for the biggest cloud providers:

- [AWS](https://aws.amazon.com/getting-started/hands-on/deploy-docker-containers/)
- [Azure](https://docs.docker.com/cloud/aci-integration/)
- [Google Cloud Run](https://cloud.google.com/run/docs/quickstarts/deploy-container)

### Further reading

#### Environments

By default we are generating a very simple way of handling different environments.
You can change the environments in the `commands/docker/environment.dart` file.

#### Script hashes

By default we are generating script hashes for each script tag in your index.html file.
You can change the hashtype or disable it in the `commands/docker/build_command.dart` file.

#### CSP Rules

By default we are adding a default Set of CSP rules to the `server/bin/middlewares.dart` File.
You can change the rules or disable them in the `commands/docker/build_command.dart` file.
You can find more informations about CSP Rules [here](https://developer.mozilla.org/en-US/docs/Web/HTTP/CSP).

### Help

If you need help, you can always use the help command.

```bash
<<your_cli>> docker --help
```

### Issues and Feedback

Feel free to open an issue or send a pull request.

### License

   ```Text
   Copyright 2022 Justin Baumann, Robin Sch??nau

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
   ```
