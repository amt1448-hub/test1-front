# ベースイメージとしてNode.jsを使用
FROM node:22-slim

# パッケージファイルをコピー
COPY src/ ./src
COPY public/ ./public
COPY package-lock.json ./
COPY package.json ./
COPY .env ./

# 依存関係をインストール
RUN npm install

# Dockerコンテナがホストの全てのネットワークインターフェースからアクセス可能であることを意味します
ENV HOSTNAME=0.0.0.0
# デフォルトポート
EXPOSE 8080
# 開発用サーバの起動
CMD ["npm", "start", "--host", "0.0.0.0", "--port=8080"]