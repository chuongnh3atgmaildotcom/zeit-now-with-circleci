#!/bin/bash
set -e

CLEAN_BRANCH_NAME=${CIRCLE_BRANCH//\//-};

JSON=$(cat <<-EOF
{
    "name": "$CIRCLE_PROJECT_REPONAME-$CLEAN_BRANCH_NAME",
    "type": "npm",
    "forwardNpm": true,
    "alias": [
        "$CLEAN_BRANCH_NAME-chuongevolve-circleci-.now.sh"
    ]
}
EOF
)

echo $JSON > .now/now.feature.json
