# March 11☕️

自分のblogの作成開始ﾀﾉｼﾐﾀﾞ(o^^o)
1ヶ月に一回バックエンドは更新して行こうと思う。とりあえず今月はrailsで書いてみる。
フロントは、毎日ちょっとずつ変えようと思っているけど、1ヶ月ごとにフレームワークを変えてみてもいいかもしれない。

h1,h2をsetup, error, ideaなどにしてタグ管理できるようにしようかな、setupコマンドは散らばってしまうと、探しづらいし、そのためにfile分けるのも違う気がする。

## setup

- rubocop.ymlの編集
- githubの設定、main保護、workflow
- `require "logger"`を加える
- dotenvの追加

## t&e
apiモードでappを作成していなかった。
```rb
# config/application.rb
module YourApp
  class Application < Rails::Application
    # これを追加してAPIモードに変更
    config.api_only = true
  end
end
```
mdにマイナーなiconを埋め込みたいけどsvgについてよくわからなかった。慣れないRuby Mineで作業しているのもあってあまり進まない。上の実行ボタンが今回でないのはなんでなんだろう。


```shell
rails generate model Post title:string content:text date:date time:string ref:string
rails generate controller api/v1/posts
```


```shell
class Post < ApplicationRecord
  enum time: { morning: "morning", noon: "noon", evening: "evening", night: "night" }

  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true
  validates :time, inclusion: { in: times.keys }
end
```