#!/bin/bash
echo ******************************************
echo Initiating the config server replicaset
echo ******************************************

# Wait 10 second and then sleep
sleep 10 | echo Sleeping ...

# Run the the replicaset
mongo mongodb://mongocfg1 initConfig.js

# Wait 10 second and then execute the command
sleep 10 | echo Sleeping ...

# Initiating the first shard
mongo mongodb://mongors1n1 initShard1.js

# Wait 10 second and then sleep
sleep 10 | echo Sleeping ...

# Initiating the first shard
mongo mongodb://mongors2n1 initShard2.js

# Wait 10 second and then sleep
sleep 10 | echo Add shards ...

# Initiating the first shard
mongo mongodb://mongos1 < addShards.js