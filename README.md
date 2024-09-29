# tsukuba-denden.github.io
電子電脳技術研究会ホームページのリポジトリ

## ちょっとした使い方
docs内のファイルを更新すれば、数分後にgithub.ioに反映されます

## Flutterのちょっとした使い方
##### ディレクトリ移動
```cd denden_homepage```
##### プレビューを起動
```flutter run -d Edge```(```flutter run```だけだとChrome)
rを押すと編集を反映、qで終了
##### 編集
denden_homepage/lib/main.dartを編集する
##### ビルド
```flutter build web --base-href /tsukuba-denden.github.io/```
