# ------------------------------------------------------------------------------
# Description: This script stops the containers and removes the images.
# ------------------------------------------------------------------------------

root_dir=$(pwd)

# Shut off all the containers
docker compose down

# Remove the template-and-test-microservices image
frontend_dir="${root_dir}/frontend"
cd ${frontend_dir}
chmod +x clean.sh
./clean.sh

# Remove the account-service image
account_service_dir="${root_dir}/backend/account-service"
cd ${account_service_dir}
chmod +x clean.sh
./clean.sh

# Remove the chat-service image
chat_service_dir="${root_dir}/backend/chat-service"
cd ${chat_service_dir}
chmod +x clean.sh
./clean.sh

# Remove the class-service image
class_service_dir="${root_dir}/backend/class-service"
cd ${class_service_dir}
chmod +x clean.sh
./clean.sh

# Remove the course-service image
course_service_dir="${root_dir}/backend/course-service"
cd ${course_service_dir}
chmod +x clean.sh
./clean.sh

# Remove the library-service image
library_service_dir="${root_dir}/backend/library-service"
cd ${library_service_dir}
chmod +x clean.sh
./clean.sh

# Remove the minigame-service image
minigame_service_dir="${root_dir}/backend/minigame-service"
cd ${minigame_service_dir}
chmod +x clean.sh
./clean.sh

# Remove the payment-service image
payment_service_dir="${root_dir}/backend/payment-service"
cd ${payment_service_dir}
chmod +x clean.sh
./clean.sh

# Remove the ranking-service image
ranking_service_dir="${root_dir}/backend/ranking-service"
cd ${ranking_service_dir}
chmod +x clean.sh
./clean.sh
