source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# =========================================
# 利用するRubyのバージョン
# =========================================
ruby "3.1.2"

# =========================================
# Railsのデフォルトgem
# =========================================
gem "rails", "~> 7.0.3"                     # Rails本体
gem "mysql2", "~> 0.5"                      # mysqlと接続する
gem "sprockets-rails"
gem "puma", "~> 5.0"                        # Railsアプリをサーバー上で動かす
gem "jbuilder"                              # jsonに変換するgem
gem "jsbundling-rails"                      # esbuild、rollup.js、またはWebpackを使ってJavaScriptをバンドルし、それをRailsのアセットパイプラインで配信
gem "turbo-rails"                           # 疑似SPAを簡単に実装
gem "stimulus-rails"                        # StimulusはTurboと美しく調和し、最小限の労力で高速で魅力的なアプリケーションのための完全なソリューションを提供
gem "cssbundling-rails"                     # CSSをバンドル・処理し、Railsのアセットパイプラインで配信
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
gem "bootsnap", require: false              # キャッシュをすることでRailsの起動を早くする
gem "sassc-rails"                           # scssを利用できるようにする
gem 'importmap-rails'                       # インポートマップは、バージョン管理されたファイルやダイジェストファイルに対応する論理名を使用して、ブラウザから直接 JavaScript モジュールをインポートすることができます
gem 'propshaft'                             # Propshaftは、Railsのアセットパイプライン用ライブラリ

# =========================================
# 便利なもの
# =========================================

# =========================================
# jsに関係するもの
# =========================================

# =========================================
# viewに関係するもの
# =========================================
gem 'haml'                                  # erb書きたくないのでhamlを入れておく
gem 'rinku'                                 # stringのURLを自動で<a href=''にしてくれるやつ
gem 'microcms-ruby-sdk'                     # microCMS

# =========================================
# viewの+α機能
# =========================================
gem 'meta-tags'                             # <mata ...>を簡単に設定できる

# =========================================
# 環境によって変わるもの
# =========================================
gem 'dotenv-rails'                          # 環境変数を指定できるやつ
gem 'config'                                # 設定ファイルをここで管理
gem 'yaml_vault'                            # yamlの暗号化
gem 'rack-rewrite'                          # onrender.com を301リダイレクトする

# =========================================
# controllerに関係するもの
# =========================================
gem 'action_args'                           # controller内でparams[:hoge]をhogeとかける
gem 'rails_param'                           # パラメータのvalidate

# =========================================
# modelに関係するもの
# =========================================
gem 'ridgepole'                             # rails標準のdb:migrateではなくridgepoleを使う
gem 'pagy'                                  # ページネーション
gem 'active_hash'                           # 静的なモデル（カテゴリ、サイト情報に利用）
gem 'email_validator'                       # model内でメールアドレスのバリデーションを行う
gem 'bcrypt'                                # model内でhas_secure_passwordでパスワードを管理できる
gem 'acts-as-taggable-on', '~> 9.0'         # タグ機能を提供
gem 'devise'                                # メールアドレス認証機構を提供
gem 'omniauth-twitter'                      # Twitterログイン
gem 'omniauth-line'                         # LINEログイン
gem 'omniauth-rails_csrf_protection'        # csrfトークン
gem 'acts_as_list'                          # modelのデータに順番を付与する
gem 'iso_country_codes'                     # 国コード

# =========================================
# ファイルのアップロードに関係する部分
# =========================================
gem 'fog-aws'                               # s3と接続するアダプタ
gem 'carrierwave', '~> 1.0'                 # 画像のアップロード処理
gem 'mini_magick'                           # 画像の横幅などを取得、画像のEXIFを削除

# =========================================
# 遅延処理=active jobh系（メールを非同期送信したりする）
# =========================================
gem 'sucker_punch'                          # 超シンプルな遅延処理アダプタ

# =========================================
# Redisを扱いやすくする
# =========================================
gem 'redis'                                 # redis本体, キャッシュではなく action cableを使う場合も必須
gem 'redis-namespace'                       # redisに名前空間を付与して開発環境でバッティングするのを避ける
gem 'redis-objects'                         # modelと簡単に連携できる
gem 'connection_pool'                       # redisとのコネクションを使いまわす

# =========================================
# 開発環境でだけ使うシリーズ
# =========================================
group :development, :test do
  gem "byebug",                             # bybugと打つことでDebugを開始できる
    platforms: %i[ mri mingw x64_mingw ]
  gem 'binding_of_caller'                   # ↓ セットで入れる、エラー画面で変数をチェックできる
  gem 'better_errors'                       # ↑ エラー画面をきれいにする
  gem 'letter_opener_web', '~> 1.0'         # メールをブラウザで確認できる
  # モデル構造を書き出せるすごいやつ
  gem 'annotate', github: 'dabit/annotate_models', branch: 'rails-7'
  gem 'rspec-rails'                         # Rspec形式でテストを行う

  # ソースコードを整形に関連したGem類
  gem 'rubocop', require: false             # rubyのソースコードを自動でチェックする
  gem 'rubocop-rails', require: false       # ↑ Rubocopにrailsの設定を追加
  gem 'rubocop-performance', require: false # ↑ Rubocopにperformance上の設定を追加
  gem 'haml-lint', require: false           # HAMLの整形
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"                         # 好きな所で console を入れるとコンソールを使える
  gem 'rack-mini-profiler', '~> 2.0'        # 左上にそのページを表示されるのに掛かった時間を表示する
  gem 'spring'                              # developmentモードでキャッシュを駆使して高速に動かすのに必須
  gem 'ed25519', require: false
  gem 'bcrypt_pbkdf', require: false
end
