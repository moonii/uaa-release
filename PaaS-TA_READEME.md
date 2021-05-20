## 01. If necessary, modify src/uaa/dependencies.gradle
``` 
$ vi src/uaa/dependencies.gradle
```

// Versions we're overriding from the Spring Boot Bom<br>
ext["mariadb.version"] = "2.3.0"
	>>>   ext["mariadb.version"] = "2.5.1"

## 02. create-release
```
$ export UAA_VERSION=74.29.0 
$ bosh create-release --name uaa --sha2 --force --tarball ./uaa-release-74.29.0-PaaS-TA.tgz --version 74.29.0-PaaS-TA
```

## 03. uaa-javas 적용
```
$ git clone  https://github.com/PaaS-TA/uaa-release -b 74.29.0-PaaS-TA-v2
$ cd uaa-release
$ git submodule sync --recursive && git submodule foreach --recursive git submodule sync  && git submodule update --init --recursive
$ cd  src/
$ cp uaa-javas/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/BackwardsCompatibleDelegatingPasswordEncoder.java uaa/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/BackwardsCompatibleDelegatingPasswordEncoder.java
$ cp uaa-javas/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/PasswordEncoderConfig.java uaa/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/PasswordEncoderConfig.java
$ bosh create-release ...
```
