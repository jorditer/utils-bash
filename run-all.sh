#!/bin/bash

trap "kill 0" EXIT

# Start all processes in parallel
echo "Starting React Vite Project with Tailwind and Express..."
echo "Starting Express backend..."
npm run dev &

echo "Starting Tailwind CSS watcher..."
npm run tailwind &

echo "Starting Vite frontend server..."
npm run vite &

npm run dev &
npm run tailwind &
npm run vite &

# Wait for all processes to finish
wait
