#!/bin/bash
mvn deploy -DaltDeploymentRepository="sonatype::default::https://oss.sonatype.org/service/local/staging/deploy/maven2" -DskipTests
mvn deploy -DaltDeploymentRepository="sonatype::default::https://oss.sonatype.org/content/repositories/releases" -DskipTests
mvn deploy -P release -DaltDeploymentRepository="sonatype::default::https://oss.sonatype.org/content/repositories/snapshots" -DskipTests
