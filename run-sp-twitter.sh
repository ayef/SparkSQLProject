#!/bin/bash
# Runs $class on the cluster of $master with given command line arguments.
# Logs are saved to "$class".log and "$class".err in the current directory.
USER="ayahmad"
class="AnalyzeTweets"
master="spark://ukko039:7077"
jar=/cs/taatto/scratch/$USER/SparkSQLProject/target/scala-2.10/AnalyzeTweets-assembly-0.1.0.jar
/cs/taatto/scratch/$USER/spark-1.0.2-bin-hadoop1/bin/spark-submit --class "$class" \
--master "$master" \
--jars /cs/taatto/scratch/$USER/SparkSQLProject/spark-streaming-twitter_2.10-1.0.2.jar "$jar" # \

#$@ 1>"$class".log 2>"$class".err

