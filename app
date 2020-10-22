{
  "name": "Telegram",
  "description": "APyrogram",
  "keywords": [
    "telegram"
  ],
  "website": "https://github.com/ujicobake102/telegram-react-docker",
  "repository": "https://github.com/ujicobake102/telegram-react-docker",
  "env": {
    "APP_ID": {
      "description": "get this value from https://my.telegram.org",
      "value": "1617655"
    },
    "API_HASH": {
      "description": "get this value from https://my.telegram.org",
      "value": "28efe9f33836f739e2777b3b7d48e815"
    },
    "TG_BOT_TOKEN": {
      "description": "get this value from @BotFather",
      "value": "962522822:AAFPcqH5TuVyhV3Ken5OiRUIfkB_tnxp9Go"
    },
    "ENV": {
      "description": "Setting this to ANYTHING will enable webhooks when in env mode",
      "value": "ANYTHING"
    },
    "AUTH_CHANNEL": {
      "description": "should be an integer. The BOT API ID of the Telegram Group, where the Leecher should work.",
      "value": "1246560805"
    },
    "CHUNK_SIZE": {
      "description": "should be an integer",
      "value": "128",
      "required": false
    },
    "ARIA_TWO_STARTED_PORT": {
      "description": "should be an integer. The port on which aria2c daemon must start, and keep listening.",
      "value": "26800",
      "required": false
    },
    "EDIT_SLEEP_TIME_OUT": {
      "description": "should be an integer. Number of seconds to wait before editing a message.",
      "value": "15",
      "required": false
    },
    "OWNER_ID": {
      "description": "should be an integer. ID of owner of bot",
      "value": "1246560805"
    },
    "LANG": {
      "description": "Setting the encoding to UTF-8 Dont touch this",
      "value": "C.UTF-8"
    }
  },
  "stack": "container",
  "formation": {
    "worker": {
      "quantity": 1,
      "size": "free"
    }
  }
}
