FROM scratch

ADD 06680a85e16b20fa0220ec6d926a9fb4a27a8b8eff86799f7ab27afddcfc6956.tar.xz /
ADD 114b8b55362529755694be55fb0ce03c415bb7b28859c9d54f87f7b3679f8aca.tar.xz /
ADD 1dfb9db1651b42bc7d47f61ba3c2a6801b89a3eea036d4bb914a9904e9c9d57e.tar.xz /
ADD 2d1a2cd33d6aaad44f694f2759433c03459db86163f0d0df408da0bb65943852.tar.xz /
ADD 89db8e6365f2adf019e4d4e70dfda9e6269e6a2c1df3dca5090ea03a170c8dce.tar.xz /
ADD 9efb979c1cd2f92d0784185058f425127702a2b2ab032807ffd6fa51530eb43b.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

