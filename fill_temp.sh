docker-compose build --no-cache
docker-compose up -d
docker cp kerndatensatz-bildgebung-fhs-service-1:/fhir-ig-publisher/temp ./temp
docker cp kerndatensatz-bildgebung-fhs-service-1:/fhir-ig-publisher/output ./output
docker-compose down
