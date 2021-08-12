# modify src/uaa/dependencies.gradle
sed -i "ext[\"mariadb.version\"] = \"2.3.0\"/ext[\"mariadb.version\"] = \"2.5.1\"" src/uaa/dependencies.gradle

# replace files
cp src/uaa-javas/BackwardsCompatibleDelegatingPasswordEncoder.java src/uaa/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/BackwardsCompatibleDelegatingPasswordEncoder.java
cp src/uaa-javas/PasswordEncoderConfig.java src/uaa/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/PasswordEncoderConfig.java
