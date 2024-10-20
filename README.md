# Minimal Reproduction of Coredump in Alpine arm64 platform (gradle/gradle#24875)

This project is a minimal reproduction of https://github.com/gradle/gradle/issues/TODO.

You can see it fail at https://github.com/Mahoney-bug-examples/gradle-alpine-arm-toolchain-bug/actions.

To reproduce, simply:

```bash
docker build .
```

If you want to explore the failure, you can run the following:

```bash
docker build . --target base -t gradle-alpine-arm-toolchain-bug-base && \
docker run --rm -it gradle-alpine-arm-toolchain-bug sh
```

Then you will be in the container and can run `./gradlew build` to reproduce the
issue.
