# Sample Gacha

Jackson用超簡易抽選システム

# はじめ方

- マイグレーション

```bash
bundle exec rails db:mirgate
```

# コマンド

## 景品の数を指定する

- 以下は2個の場合。bundle exec rails gacha:create[景品の数]として入力
- 数字のみ指定可能

```bash
bundle exec rails gacha:create[2]
```

- 結果

```bash
bundle exec rails gacha:create[2]

=========
01番：-
02番：-
gacha uuid: 8uhOA7N1cK
=========
```

## 抽選する

- 抽選を実行する。uuidを指定しない場合は、最後に作成されたガチャを基準に抽選する

```bash
# uuidを指定しない
bundle exec rails gacha:run

# uuidを指定する
bundle exec rails gacha:run[8uhOA7N1cK]
```

- 結果

```bash
bundle exec rails gacha:run

選ばれたのは、[1]番です！
=========
01番：✓
02番：-
gacha: 8uhOA7N1cK
=========
```

## 抽選結果を表示する

- 抽選結果を表示する。uuidを指定しない場合は、最後に作成されたガチャの抽選結果を表示

```bash
# uuidを指定しない
bundle exec rails gacha:list

# uuidを指定する
bundle exec rails gacha:list[8uhOA7N1cK]
```

- 結果

```bash
bundle exec rails gacha:list

選ばれたのは、[1]番です！
=========
01番：✓
02番：-
gacha: 8uhOA7N1cK
=========
```
