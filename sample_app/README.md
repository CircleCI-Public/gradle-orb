# Build scan quickstart

<img src="http://bit.ly/2JSSCT0" align="right" width="280" />

This is an example project that you can use to experience [build scans][gradle.com].

It is a small Java project that has the [Gradle Build Scan Plugin][plugin] already applied.

## Create a build scan

Follow these simple steps to create a build scan:

1. Clone this project
1. Run `./gradlew build --scan`
1. Agree to the [Terms of Service][terms-of-service] on the command line

The build should end with something similar to:

    Publishing build scan...
    https://gradle.com/s/ria2s2x5oaazq

Follow the green link shown at the end of the build to view your build scan.

Note: If you run a build without the `--scan` flag, no build scan will be created and
no information will be sent.

## Experiment with build scans

Create different kinds of build scans by locally modifying this quickstart project. Here are some ideas:

- Edit `src/main/java/example/Example.java` to introduce compile errors
- Edit `src/test/java/example/ExampleTest.java` to introduce test failures
- Add more dependencies, more plugins, and more projects

Alternatively, enable one of your own builds to produce build scans by following the [step-by-step instructions][instructions].

## Learn more

Read the [Gradle Build Scan Plugin User Manual][manual] to learn more about build scans and the build scan plugin.

## Need help?

Talk to us on the [Gradle forum][gradle-forum].

If you are completely new to the Gradle Build Tool, start [here][gradle-download].

[gradle-download]: https://gradle.org/install/
[plugin]: https://docs.gradle.com/build-scan-plugin/
[gradle.com]: https://www.gradle.com
[terms-of-service]: https://gradle.com/terms-of-service
[instructions]: https://scans.gradle.com/
[gradle-forum]: https://discuss.gradle.org/c/help-discuss/scans
[manual]: https://docs.gradle.com/build-scan-plugin/
