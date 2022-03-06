# download hadoop
wget https://downloads.apache.org/hadoop/common/hadoop-3.3.0/hadoop-3.3.0.tar.gz

# extract hadoop
tar -xzf hadoop-3.3.0.tar.gz

# # copy hadoop to /usr/local/
# cp -r hadoop-3.3.0/ /usr/local/

# set java home as environment variable
echo "export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:bin/java::")" >> \
/content/hadoop-3.3.0/etc/hadoop/hadoop-env.sh

# add hadoop to path
python3 -c "import os; \
os.environ['PATH'] += ':/content/hadoop-3.3.0/bin'"
