#!/bin/bash

if [ ! -f ".env" ]; then
    cp .env.example .env
fi

npm install
npm run typeorm:run-migrations
npm run start:dev