# ------------------------------------------------------------------------------
# Description: This script builds the images of services
# and fires up the containers.
# ------------------------------------------------------------------------------

root_dir=$(pwd)

# Build the frontend image
frontend_dir="${root_dir}/frontend"
cd ${frontend_dir}
chmod +x build.sh
./build.sh

# Build the account-service image
account_service_dir="${root_dir}/backend/account-service"
cd ${account_service_dir}
chmod +x build.sh
./build.sh

# Build the chat-service image
chat_service_dir="${root_dir}/backend/chat-service"
cd ${chat_service_dir}
chmod +x build.sh
./build.sh

# Build the class-service image
class_service_dir="${root_dir}/backend/class-service"
cd ${class_service_dir}
chmod +x build.sh
./build.sh

# Build the course-service image
course_service_dir="${root_dir}/backend/course-service"
cd ${course_service_dir}
chmod +x build.sh
./build.sh

# Build the library-service image
library_service_dir="${root_dir}/backend/library-service"
cd ${library_service_dir}
chmod +x build.sh
./build.sh

# Build the minigame-service image
minigame_service_dir="${root_dir}/backend/minigame-service"
cd ${minigame_service_dir}
chmod +x build.sh
./build.sh

# Build the payment-service image
payment_service_dir="${root_dir}/backend/payment-service"
cd ${payment_service_dir}
chmod +x build.sh
./build.sh

# Build the ranking-service image
ranking_service_dir="${root_dir}/backend/ranking-service"
cd ${ranking_service_dir}
chmod +x build.sh
./build.sh

# Fire up the containers
cd ${root_dir}
docker compose up -d