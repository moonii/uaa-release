## 01. If necessary, modify src/uaa/dependencies.gradle
``` 
$ vi src/uaa/dependencies.gradle
```

// Versions we're overriding from the Spring Boot Bom
ext["mariadb.version"] = "2.3.0"
	>>>   ext["mariadb.version"] = "2.5.1"

## 02. create-release
```
$ export UAA_VERSION=74.29.0 
$ bosh create-release --name uaa --sha2 --force --tarball ./uaa-release-74.29.0-PaaS-TA.tgz --version 74.29.0-PaaS-TA
```
