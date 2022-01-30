#!/bin/sh

# Get the token from Travis environment vars and build the bot URL:
BOT_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

# Set formatting for the message. Can be either "Markdown" or "HTML"
PARSE_MODE="Markdown"

# echo "${CI_JOB_STATUS}"
# Use built-in Travis variables to check if all previous steps passed:
if [${CI_JOB_STATUS} == 'success']; then
    build_status="succeeded"
else
    build_status="failed"
fi

# Define send message function. parse_mode can be changed to
# HTML, depending on how you want to format your message:

curl -s -X POST ${BOT_URL} -d chat_id=$TELEGRAM_CHAT_ID \
        -d text="
-------------------------------------
Gitlab build * ${CI_JOB_STATUS}!*
\`Repository:  ${CI_PROJECT_DIR}\`
\`Branch:      ${CI_COMMIT_BRANCH}\`
*Commit Msg:*
${CI_COMMIT_MESSAGE	}
)
--------------------------------------
" -d parse_mode=${PARSE_MODE}

