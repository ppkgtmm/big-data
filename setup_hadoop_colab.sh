# download hadoop
wget https://downloads.apache.org/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz

# extract hadoop
tar -xzf hadoop-3.3.0.tar.gz

# copy hadoop to /usr/local/ so that we have hadoop command available
cp -r hadoop-3.3.0/ /usr/local/

# set java home as environment variable
echo "export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")" >> \
/usr/local/hadoop-3.3.0/etc/hadoop/hadoop-env.sh
