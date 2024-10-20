# Minimal Reproduction of Toolchain download on alpine fails in indecipherable way (gradle/gradle#30970)

This project is a minimal reproduction of https://github.com/gradle/gradle/issues/30970.

You can see it fail at https://github.com/Mahoney-bug-examples/gradle-alpine-arm-toolchain-bug/actions.

To reproduce, simply:

```bash
docker build .
```

If you want to explore the failure, you can run the following:

```bash
docker build . --target base -t gradle-alpine-arm-toolchain-bug-base && \
docker run --rm -it gradle-alpine-arm-toolchain-bug-base sh
```

Then you will be in the container and can run `./gradlew build` to reproduce the
issue.
