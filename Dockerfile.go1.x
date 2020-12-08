FROM scratch

ADD 12a396204176e3dc9d0bd61804ad3f605832bac51d58a3d44553e0f16b460127.tar.xz /
ADD 14ab5c302bc1aeae42febe3c0ceffea8ebb6ce563de98f8fdbceabbfb34dc033.tar.xz /
ADD 429951a58f2faec1d64bf1c7f1b475f96a8594d9eea4a2b9f75a8470e662a4f9.tar.xz /
ADD 626757188772acffcded4716b5d9d1d68aa7b292a5145c2c11bf6e74912c5444.tar.xz /
ADD 63a41e74b8ef3eb0cadfb6570c4d0c16262a07b42f1ccec2ae2c0356de71a126.tar.xz /
ADD 992cf0a0f61ebaf519fdbf4183bb4591ed9b65fcabd38715e5bf7b98132113a3.tar.xz /
ADD ebb464f8e494a631ede0d55e9d81772d8d136119f068cd75d8106b30adc69584.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

