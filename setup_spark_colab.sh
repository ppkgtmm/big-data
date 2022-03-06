# download java
apt install openjdk-8-jdk-headless &> /dev/null

# download and decompress spark
wget -O /content/spark-3.2.1-bin-hadoop2.7.tgz https://dlcdn.apache.org/spark/spark-3.2.1/spark-3.2.1-bin-hadoop2.7.tgz
tar -xzf /content/spark-3.2.1-bin-hadoop2.7.tgz

# install python spark interface
pip3 install pyspark
