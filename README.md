# Q&Aアプリ

## Overview

The best QandA app.  
This is FFF's first memorable app!  
After using this app you will say.  
It's "real Omotenashi".  

## Requirements

- Ruby 3.2.2
- Rails 7.0.4.2
- MySQL 8.0.32

## Installation

### ホスト側

コンテナを起動

```bash
docker-compose up
```

コンテナの中に入る

```sh
docker-compose exec web /bin/bash
```

### コンテナ内

バンドルインストールする

```sh
bundle install --without production
```

マイグレートする

```sh
rails db:migrate
```

webサーバー起動

```sh
rails s -b 0.0.0.0
```


