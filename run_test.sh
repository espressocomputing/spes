export JAVA_REPO=~/.m2/repository

export TEMP_CLASSPATH=~/espresso/spes/target/test-classes:~/espresso/spes/target/classes:$JAVA_REPO/org/apache/calcite/calcite-core/1.19.0/calcite-core-1.19.0.jar:$JAVA_REPO/org/apache/calcite/avatica/avatica-core/1.13.0/avatica-core-1.13.0.jar:$JAVA_REPO/org/apache/calcite/avatica/avatica-metrics/1.13.0/avatica-metrics-1.13.0.jar:$JAVA_REPO/com/google/protobuf/protobuf-java/3.6.1/protobuf-java-3.6.1.jar:$JAVA_REPO/org/apache/httpcomponents/httpclient/4.5.6/httpclient-4.5.6.jar:$JAVA_REPO/commons-codec/commons-codec/1.10/commons-codec-1.10.jar:$JAVA_REPO/org/apache/httpcomponents/httpcore/4.4.10/httpcore-4.4.10.jar:$JAVA_REPO/org/apache/calcite/calcite-linq4j/1.19.0/calcite-linq4j-1.19.0.jar:$JAVA_REPO/org/apache/commons/commons-dbcp2/2.5.0/commons-dbcp2-2.5.0.jar:$JAVA_REPO/org/apache/commons/commons-pool2/2.6.0/commons-pool2-2.6.0.jar:$JAVA_REPO/commons-logging/commons-logging/1.2/commons-logging-1.2.jar:$JAVA_REPO/org/apache/commons/commons-lang3/3.8/commons-lang3-3.8.jar:$JAVA_REPO/com/esri/geometry/esri-geometry-api/2.2.0/esri-geometry-api-2.2.0.jar:$JAVA_REPO/com/fasterxml/jackson/core/jackson-core/2.9.8/jackson-core-2.9.8.jar:$JAVA_REPO/com/fasterxml/jackson/core/jackson-annotations/2.9.8/jackson-annotations-2.9.8.jar:$JAVA_REPO/com/fasterxml/jackson/core/jackson-databind/2.9.8/jackson-databind-2.9.8.jar:$JAVA_REPO/com/fasterxml/jackson/dataformat/jackson-dataformat-yaml/2.9.8/jackson-dataformat-yaml-2.9.8.jar:$JAVA_REPO/org/yaml/snakeyaml/1.23/snakeyaml-1.23.jar:$JAVA_REPO/com/google/guava/guava/19.0/guava-19.0.jar:$JAVA_REPO/com/yahoo/datasketches/sketches-core/0.9.0/sketches-core-0.9.0.jar:$JAVA_REPO/com/yahoo/datasketches/memory/0.9.0/memory-0.9.0.jar:$JAVA_REPO/com/jayway/jsonpath/json-path/2.4.0/json-path-2.4.0.jar:$JAVA_REPO/net/hydromatic/aggdesigner-algorithm/6.0/aggdesigner-algorithm-6.0.jar:$JAVA_REPO/commons-lang/commons-lang/2.4/commons-lang-2.4.jar:$JAVA_REPO/org/codehaus/janino/janino/3.0.11/janino-3.0.11.jar:$JAVA_REPO/org/codehaus/janino/commons-compiler/3.0.11/commons-compiler-3.0.11.jar:$JAVA_REPO/org/slf4j/slf4j-api/1.7.25/slf4j-api-1.7.25.jar:$JAVA_REPO/org/hamcrest/hamcrest/2.1/hamcrest-2.1.jar:$JAVA_REPO/com/google/code/gson/gson/2.8.5/gson-2.8.5.jar:$JAVA_REPO/junit/junit/4.12/junit-4.12.jar:$JAVA_REPO/org/hamcrest/hamcrest-core/1.3/hamcrest-core-1.3.jar:$JAVA_REPO/tools/aqua/z3-turnkey/4.12.2/z3-turnkey-4.12.2.jar

QUERY_1="SELECT * FROM EMP"
QUERY_2="SELECT * FROM EMP"
SCHEMA="no schema"


java -classpath $TEMP_CLASSPATH SimpleQueryTests.EspressoTest \
     $QUERY_1 $QUERY_2 $SCHEMA \
     2>&1 | grep -v SLF4J
