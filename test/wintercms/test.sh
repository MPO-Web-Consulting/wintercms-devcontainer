#!/bin/bash
cd $(dirname "$0")
source test-utils.sh

# Template specific tests
check "distro" lsb_release -c
# check php
check "php" php -v
# check composer
check "composer" composer -v
# check cms
check "cms" php artisan winter:version

# Report result
reportResults
