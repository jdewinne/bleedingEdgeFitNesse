# Install OpenJDK
class openjdk {
    package {
      'java-1.7.0-openjdk.x86_64':
        ensure  => installed,
    }
}


include openjdk
