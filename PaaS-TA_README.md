## 01. Submodule modify : uaa (src/uaa)

> $ vi src/uaa/dependencies.gradle
```diff
 // Versions we're overriding from the Spring Boot Bom
-ext["mariadb.version"] = "2.3.0"
+ext["mariadb.version"] = "2.5.1"
 ext["flyway.version"] = "5.2.4"

 // Versions shared between multiple dependencies
```