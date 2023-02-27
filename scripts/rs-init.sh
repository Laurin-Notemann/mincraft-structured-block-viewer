DELAY=10

mongosh <<EOF
var config = {
    "_id": "mcviewSet",
    "version": 1,
    "members": [
        {
            "_id": 1,
            "host": "mcmongo1:27017",
            "priority": 2
        },
        {
            "_id": 2,
            "host": "mcmongo2:27017",
            "priority": 1
        },
        {
            "_id": 3,
            "host": "mcmongo3:27017",
            "priority": 1
        }
    ]
};
rs.initiate(config, { force: true });
EOF

echo "****** Waiting for ${DELAY} seconds for replicaset configuration to be applied ******"

sleep $DELAY

mongosh < /scripts/init.js