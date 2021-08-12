# modify src/uaa/dependencies.gradle
sed -i "`(grep -Rn mariadb.version src/uaa/dependencies.gradle | awk -F ":" '{ print $1 }')`s/2.3.0/2.5.1/" src/uaa/dependencies.gradle

# replace files
cp src/uaa-javas/BackwardsCompatibleDelegatingPasswordEncoder.java src/uaa/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/BackwardsCompatibleDelegatingPasswordEncoder.java
cp src/uaa-javas/PasswordEncoderConfig.java src/uaa/server/src/main/java/org/cloudfoundry/identity/uaa/util/beans/PasswordEncoderConfig.java
