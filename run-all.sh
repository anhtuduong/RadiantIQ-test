!/bin/bash
# ------------------------------------------------------------------------------
# Description: This script builds the images of services
# and fires up the containers.
# ------------------------------------------------------------------------------

# Directories
root_dir=$(pwd)
template_and_test_microservices_dir="${root_dir}/backend/template-and-test-microservices"

# Build the images
cd ${template_and_test_microservices_dir}
./build.sh

# Fire up the containers
cd ${root_dir}
docker compose up -d