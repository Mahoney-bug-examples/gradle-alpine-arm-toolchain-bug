# Minimal Reproduction of Coredump in Alpine arm64 platform (gradle/gradle#24875)

This project is a minimal reproduction of https://github.com/gradle/gradle/issues/24875.

You can see at https://github.com/Mahoney-bug-examples/gradle-alpine-arm-bug/actions
that it builds fine on x64.

Unfortunately GitHub Actions ARM runners cost money so I haven't added one to
the matrix, but the following will fail on an ARM box:

```bash
docker build .
```

If you want to explore the failure, you can run the following:

```bash
docker build . --target base -t gradle-alpine-arm-bug-base && \
docker run --rm -it gradle-alpine-arm-bug-base sh
```

Then you will be in the container and can run `./gradlew tasks` to reproduce the
issue. `cat /root/.gradle/daemon/8.5/hs_err_pid*.log` may be worth looking at.
