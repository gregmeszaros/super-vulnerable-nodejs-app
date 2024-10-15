
# Vulnerable Dockerfile (Privilege escalation issue)
FROM node:20.18

# Using root user, which is a bad security practice
USER root

WORKDIR /app
COPY . .

RUN npm install

CMD ["node", "app.js"]
