FROM scratch

ADD 049af46030c18bded4f6fd0c1a4346d9927d614912d34b5cd5a91a963bdeb9f1.tar.xz /
ADD 294ad135d4df979cf3c660ebcf46ce7e03b8fb870fba4af712f755aebff3ac80.tar.xz /
ADD 2a78c2cf6bc9e3a2b14565e9160be34cb73702beaf0ed1fdfcf626b612cbc569.tar.xz /
ADD 2d1a2cd33d6aaad44f694f2759433c03459db86163f0d0df408da0bb65943852.tar.xz /
ADD 5cf2e3e117485ed3cba659d6d7c930960fca21dbf794980a13015815ca1d7973.tar.xz /
ADD a6d2fc21f76c2efcc15ed3e12ea33c6460b1b3a1e64992b120d912102c1dc70d.tar.xz /

ENV LANG=en_US.UTF-8
ENV TZ=:/etc/localtime
ENV PATH=/var/lang/bin:/usr/local/bin:/usr/bin/:/bin:/opt/bin
ENV LD_LIBRARY_PATH=/var/lang/lib:/lib64:/usr/lib64:/var/runtime:/var/runtime/lib:/var/task:/var/task/lib:/opt/lib
ENV LAMBDA_TASK_ROOT=/var/task
ENV LAMBDA_RUNTIME_DIR=/var/runtime

WORKDIR /var/task

ENTRYPOINT ["/lambda-entrypoint.sh"]

