#!/bin/bash

env ${ADDITIONAL_ENVIRONMENT_VARS} /bin/docker-entrypoint.sh ${ADDITIONAL_CMDLINE_ARGS}
