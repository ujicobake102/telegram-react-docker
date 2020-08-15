FROM node
EXPOSE 3000

RUN git clone https://github.com/evgeny-nadymov/telegram-react.git /app
WORKDIR /app
RUN npm ci
RUN cp node_modules/tdweb/dist/* public/

CMD REACT_APP_TELEGRAM_API_HASH=$(cat $REACT_APP_TELEGRAM_API_HASH_FILE) REACT_APP_TELEGRAM_API_ID=$(cat $REACT_APP_TELEGRAM_API_ID_FILE) npm run start
