#!/bin/bash
cd /tmp/kavia/workspace/code-generation/tic-tac-toe-interactive-645034-645043/tic_tac_toe_frontend
npx eslint 
$ESLINT_EXIT_CODE
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

