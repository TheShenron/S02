FROM mcr.microsoft.com/playwright:v1.58.2-noble

WORKDIR /test_runner

RUN apt-get update && apt-get install -y python3-pip

COPY requirements.txt .
RUN pip3 install --break-system-packages --no-cache-dir -r requirements.txt

COPY package.json package-lock.json* ./
RUN npm ci

COPY . .

CMD ["npm", "test"]