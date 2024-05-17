# ------------------------------------------------------------------------------
# Description: This script stops the containers and removes the images.
# ------------------------------------------------------------------------------

# Directories
root_dir=$(pwd)
template_and_test_microservices_dir="${root_dir}/backend/template-and-test-microservices"

# Shut off all the containers
docker compose down

# Remove the images
${template_and_test_microservices_dir}/clean.sh
