$action = "up"  # change to "down" to stop containers

$composeFiles = @("-f", "docker-compose.yml", "-f", "docker-compose.dev.yml")

if ($action -eq "up") {
    docker compose $composeFiles up --build
}
elseif ($action -eq "down") {
    docker compose $composeFiles down
}
else {
    Write-Host "Invalid action. Please set `$action` to 'up' or 'down'."
}