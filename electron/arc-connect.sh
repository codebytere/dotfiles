#!/bin/bash

MACHINE_NAME=$1

get_container_id() {
  local start_time=$(date +%s)
  local timeout=120  # 2 minutes

  while true; do
    output=$(kubectl exec -n arc-runners -it $1 -c dind -- docker ps --format "{{.ID}}" 2>&1)
    if [[ $output == *"Error from server (NotFound): pods"* ]]; then
      echo "Error: Runner $1 not found."
      break
    fi

    container_id=$(echo "$output" | tr -d '\r')
    if [ -n "$container_id" ]; then
      echo $container_id
      break
    fi

    current_time=$(date +%s)
    elapsed_time=$((current_time - start_time))
    if [ $elapsed_time -ge $timeout ]; then
      echo "Error: Timed out after 2 minutes waiting for container ID."
      break
    fi

    sleep 5
  done
}

echo "Connecting to runner $MACHINE_NAME"

CONTAINER_ID=$(get_container_id $MACHINE_NAME)
if [[ $CONTAINER_ID == Error* ]]; then
  echo "$CONTAINER_ID"
  exit 1
fi

kubectl exec -n arc-runners -it $MACHINE_NAME -c dind -- docker exec -it $CONTAINER_ID touch /var/.ssh-lock

echo "Connected to runner $MACHINE_NAME with container ID $CONTAINER_ID."

kubectl exec -n arc-runners -it $MACHINE_NAME -c dind -- docker exec -it $CONTAINER_ID /bin/bash

cleanup() {
  echo "Removing SSH lock..."
  kubectl exec -n arc-runners -it $MACHINE_NAME -c dind -- docker exec -it $CONTAINER_ID rm -f /var/.ssh-lock
}

trap cleanup EXIT
