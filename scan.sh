#!/bin/bash
pylint cyb600_module7/ --output-format=parseable > .pylint-report.txt
docker run \
    --rm \
    --net host \
    -e SONAR_HOST_URL="http://localhost:9000" \
    -e SONAR_LOGIN="sqp_ca7bd90654a6f7dfa663526fbdcb3c5a7de5de2b" \
    -v "${PWD}:/usr/src" \
    sonarsource/sonar-scanner-cli