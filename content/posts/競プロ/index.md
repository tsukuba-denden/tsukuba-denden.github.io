---
title: "競プロのはじめかた"
date: 2025-1-15
lastmod: 2025-1-15
description: "競技プログラミングを始めたい電電部員へ！"
tags: ["競プロ"]
---

## 準備
コンテストへの参加には準備が必要。

### AtCoderアカウントをつくる
<div class="iframely-embed"><div class="iframely-responsive" style="height: 140px; padding-bottom: 0;"><a href="https://atcoder.jp/register?continue=https%3A%2F%2Fatcoder.jp%2F" data-iframely-url="//iframely.net/r4Px8rt"></a></div></div><script async src="//iframely.net/embed.js"></script>
プロフィールの所属は`電子電脳技術研究会`を含めておくと便利

### AJLに参加登録する
<div class="iframely-embed"><div class="iframely-responsive" style="height: 140px; padding-bottom: 0;"><a href="https://atcoder.jp/contests/ajl2024winter" data-iframely-url="//iframely.net/lgiLWyK"></a></div></div><script async src="//iframely.net/embed.js"></script>
学校コードは`C113110000041`←コピペ用

### 拡張機能をいれる
<div class="iframely-embed"><div class="iframely-responsive" style="height: 140px; padding-bottom: 0;"><a href="https://scrapbox.io/magurofly/AtCoder%E3%82%92%E3%81%99%E3%82%8B%E3%81%A8%E3%81%8D%E3%80%81%E5%85%A5%E3%82%8C%E3%81%A6%E3%81%8A%E3%81%8F%E3%81%A8%E3%81%84%E3%81%84%E6%8B%A1%E5%BC%B5%E6%A9%9F%E8%83%BD%E3%81%AA%E3%81%A9" data-iframely-url="//iframely.net/bXIS21Y?card=small"></a></div></div><script async src="//iframely.net/embed.js"></script>
を見て好きなの入れると良い

### 環境構築する
{{< youtubeLite id="uhnASau7fB4" label="" >}}
環境構築すればローカルでコードテストができるようになります
やらなくてもまぁ良いがやるに越したことはない

## AtCoderについて
AtCoderは競技プログラミングのコンテストを主催する会社。
ABC、ARC、AGC、AHCの4種類のコンテストが存在するが、我々が参加するのはABCとAHC
<div class="iframely-embed"><div class="iframely-responsive" style="height: 140px; padding-bottom: 0;"><a href="https://info.atcoder.jp/overview/contest/intro" data-iframely-url="//iframely.net/JOM6FWS?card=small"></a></div></div><script async src="//iframely.net/embed.js"></script>

### レートと色
AtCoderにはレートが存在する。そのレートに応じてランク分けされていて、「◯色」と表現する。
|レート|色|分布|
|---|---|---|
|0〜|<font color="#808080">灰色</font>|上位100.000%|
|400〜|<font color="#804000">茶色</font>|上位28.462%|
|800〜|<font color="#008000">緑色</font>|上位16.022%|
|1200〜|<font color="#00C0C0">水色</font>|上位7.895%|
|1600〜|<font color="#0000FF">青色</font>|上位3.609%|
|2000〜|<font color="#C0C000">黄色</font>|上位1.513%|
|2400〜|<font color="#FF8000">橙色</font>|上位0.396%|
|2800〜|<font color="#FF0000">赤色</font>|上位0.161%|

[AtCoder Info](https://info.atcoder.jp/utilize/jobs/rating-business-impact)より

ちなみに、灰〜青は寒色、黄〜赤は暖色と言われる。

### ABC
レート2000までの人のレートが変動するコンテスト
毎週土曜21時〜22時40分
より多くの問題をより早く解けばパフォーマンスが上がる。AJL(アルゴリズム部門)のスコアにも反映される

### AHC
一風変わった形式で、1つの問題の答えをより正確に求めればパフォーマンスが上がる。AJL(ヒューリスティック部門)のスコアにも反映される
それなりにヒューステリック用の勉強をしてこないと大幅な点数改善は見込めない。ので、テストコードがある場合はそれをコピペ、ない場合は空白出力を必ず試す。(←ここ重要)
最後に提出したコードのみで判定される場合もあるので注意

### AJL
学校対抗リーグ
学校ランキング/学年内の個人ランキングが表示される
表彰+キューブ(かっこいい)もらえるのでやった方が良い
詳しく言うと、学校ランキングも個人ランキングも、
アルゴ部門は20位、ヒューリス部門は10位までが表彰圏内
アルゴ部門は上位6個のスコアで、ヒューリスは上位3個のスコアで競う
![ajlのキューブ](https://img.atcoder.jp/ajl2024/6a807d0bfdcfc0e7bd5b914ac64859ff.png)

## 精進
しょうじん
【精進】
《名・ス自》
1.雑念を去り一心に仏道修行すること。
2.身をきよめ行いを慎むこと
3.競技プログラミングにおいて、問題演習などを通じて実力を向上させること

[Blueberry式初心者向けフローチャート](https://scrapbox.io/Atcoder-myReflection/%E5%88%9D%E5%BF%83%E8%80%85%E5%90%91%E3%81%91%E3%83%95%E3%83%AD%E3%83%BC%E3%83%81%E3%83%A3%E3%83%BC%E3%83%88%EF%BC%88%E6%9A%AB%E5%AE%9A%EF%BC%89)に目を通しておくと良い

### AtCoder Problems
<div class="iframely-embed"><div class="iframely-responsive" style="height: 140px; padding-bottom: 0;"><a href="https://kenkoooo.com/atcoder/#/table/" data-iframely-url="//iframely.net/g8B9Svf"></a></div></div><script async src="//iframely.net/embed.js"></script>
このサイトでは、自分が解いた問題を可視化したり、ライバルと比較したり、バーチャルコンテストを立てたりすることができる。
まず、自分の名前をUserIDに入力してみよう。すると、解いた問題に色がつくのが分かる。
問題の左の円の部分にカーソルを合わせるとDifficultyが表示される。これは例えばDifficultyが500の場合、レート500の人の半分ぐらいがとけるあ、ということを意味する。レート500は茶色なので、この問題は「茶Diff」である。

### AtCoder Novisteps
<div class="iframely-embed"><div class="iframely-responsive" style="height: 140px; padding-bottom: 0;"><a href="https://atcoder-novisteps.vercel.app/problems" data-iframely-url="//iframely.net/V9Y1BP1"></a></div></div><script async src="//iframely.net/embed.js"></script>
「問題一覧」から難易度別の問題に挑める