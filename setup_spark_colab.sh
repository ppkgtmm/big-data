# download java
apt install openjdk-8-jdk-headless &> /dev/null

# download and decompress spark
wget -O /content/spark-3.2.1-bin-hadoop2.7.tgz https://dlcdn.apache.org/spark/spark-3.2.1/spark-3.2.1-bin-hadoop2.7.tgz
tar -xzf /content/spark-3.2.1-bin-hadoop2.7.tgz

# export environment variables
python3 -c 'import os; \
os.environ["JAVA_HOME"] = "/usr/lib/jvm/java-8-openjdk-amd64"; \
os.environ["SPARK_HOME"] = "/content/spark-3.2.1-bin-hadoop2.7"'

# install python spark interface
pip3 install pyspark
