#!/bin/bash

# Webapp에서 make run 실행
echo "Starting webapp..."
(cd webapp && make run) &

# Server에서 make run-server 실행
echo "Starting server..."
(cd server && make run-server) &

# 두 프로세스가 모두 종료될 때까지 대기
wait

echo "Both webapp and server processes have finished."
