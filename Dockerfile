FROM hub.c.163.com/wuxukun/maven-aliyun:3-jdk-8

ADD pom.xml /tmp/build/

ADD src /tmp/build/src
        #构建应用
RUN cd /tmp/build && mvn clean package \
        #拷贝编译结果到指定目录
        && mv target
