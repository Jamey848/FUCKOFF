$ErrorActionPreference = "Stop"

Write-Host "Creating backup..."

docker compose exec -T taskflow-db sh -c "mongodump --archive" > "Mongobackup.dump"

Write-Host "Backup complete. Shutting down containers..."

docker compose down

Write-Host "Shutdown completed"

