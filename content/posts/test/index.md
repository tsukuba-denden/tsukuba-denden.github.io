---
title: "test"
date: 2024-11-28
draft: false
description: "test"
tags: ["test"]
---

{{< lead >}}
[ShortCord](https://blowfish.page/ja/docs/shortcodes/)機能を使ってみる！！
{{< /lead >}}

## アラート

{{< alert icon="twitter" iconColor="#4a99e9" textColor="#b2b2b2" >}}
Twitterで[フォロー](https://twitter.com/intent/follow?screen_name=Tsukuba_denden)してね！
{{< /alert >}}

<br>

## 記事へのリンク

{{< article link="/posts/githubprofile/" >}}

<br>

## バッジ

{{< badge >}}
New article!
{{< /badge >}}

<br>

## ボタン

{{< button href="#button" target="_self" >}}
ボタンを押す
{{< /button >}}

<br>
<br>

## スライドショー

{{< carousel images="gallery/*" >}}

<br>

## 棒グラフ

{{< chart >}}
type: 'bar',
data: {
  labels: ['yuubinnkyoku', 'kusaann', 'moa', 'kf25' , 'sawasawa' , 'sawayan'],
  datasets: [{
    label: '登録者数',
    data: [144, 187000, 54800, 16200, 9370, 1960000],
  }]
}
{{< /chart >}}

<br>

## 折れ線グラフ

{{< chart >}}
type: 'line',
data: {
  labels: ['1月', '2月', '3月', '4月', '5月', '6月', '7月'],
  datasets: [{
    label: '初めてのデータセット',
    data: [65, 59, 80, 81, 56, 55, 40],
    tension: 0.2
  }]
}
{{< /chart >}}
<br>

## 円グラフ

{{< chart >}}
type: 'doughnut',
data: {
  labels: ['赤色', '青色', '黄色'],
  datasets: [{
    label: '初めてのデータセット',
    data: [300, 50, 100],
    backgroundColor: [
      'rgba(255, 99, 132, 0.7)',
      'rgba(54, 162, 235, 0.7)',
      'rgba(255, 205, 86, 0.7)'
    ],
    borderWidth: 0,
    hoverOffset: 4
  }]
}
{{< /chart >}}
<br>

## Code Import

{{< codeimporter url="https://raw.githubusercontent.com/tsukuba-denden/tentative/refs/heads/main/index.html" type="txt" startLine="2" endLine="6" >}}

## Figure(画像挿入)

![Abstract purple artwork](abstract.jpg "Photo by [Jr Korpa](https://unsplash.com/@jrkorpa) on [Unsplash](https://unsplash.com/)")
<br>

## ギャラリー

{{< gallery >}}
  <img src="gallery/denden.png" class="grid-w33" />
  <img src="gallery/dendendirect.png" class="grid-w33" />
{{< /gallery >}}
<br>

## GitHubカード

{{< github repo="tsukuba-denden/tsukuba-denden.github.io" >}}
<br>

## アイコン
{{< icon "github" >}}
{{< icon "twitter" >}}
{{< icon "youtube" >}}
<br>

## 数式(Katex)

{{< katex >}}
\\(X^n+Y^{n+1}=Z^{n+2}\\)が成立する自然数の組み合わせ\\((X,Y,Z)\\)がどんな自然数\\(n\\)に対しても存在することを証明せよ。

$$
Proof
$$
$$
e^{i\pi} = -1
$$
$$
\sin\times\div\cos\theta
$$
$$
\frac{\pi_2}{\pi_{1_2}}
$$
$$
\pi\quad\pi\qquad\pi\hspace{50pt}\pi
$$
$$
\overbrace{AB}\Overrightarrow{AB}\lBrace\rBrace
$$

$$
Q.E.D.
$$

$$
\varphi = 1+\frac{1} {1+\frac{1} {1+\frac{1} {1+\cdots} } }
$$
$$
ABΓΔEZHΘIKΛMNΞOΠPΣTΥΦXΨΩ 
$$
$$
αβγδϵζηθικλμνξoπρστυϕχψωεϑϖϱςφϝ
$$

### Katexについて
https://blowfish.page/ja/samples/mathematical-notation/
https://katex.org/docs/supported.html#style-color-size-and-font

## キーワード
{{< keywordList >}}
{{< keyword >}} *またしても* 何も知らない {{< /keyword >}}ゆうびんきょくさん
{{< keyword icon="github" >}} I am post. {{< /keyword >}}
{{< keyword icon="code" >}} 帝京平成大学の **ここがスゴイ** {{< /keyword >}}
{{< /keywordList >}}

{{< keyword >}} *Standalone* skill {{< /keyword >}}
<br>

## リード文
{{< lead >}}
人生でレモンをもらったら、レモネードを作ろう。
{{< /lead >}}

## 記事のリスト
{{< list limit=2 >}}
{{< list cardView=true limit=2 >}}

## 右から左に書く文字
- This is an markdown list.
- Its per default a LTR direction
{{% rtl %}}
- هذه القائمة باللغة العربية
- من اليمين الى اليسار
{{% /rtl %}}
{{% rtl %}}
- ああهあذあهあ あああاあل
- こんにちはゆうびんきょく
{{% /rtl %}}

## MarkDownを取ってくる
{{< mdimporter url="https://raw.githubusercontent.com/yuubinnkyoku/yuubinnkyoku/master/README.md" >}}

## mermaid(フローチャート)

{{< mermaid >}}
graph LR;
A[Lemons]-->B[Lemonade];
B-->C[Profit]
{{< /mermaid >}}
<br>

## swatches(カラーパレット)
{{< swatches "#64748b" "#3b82f6" "#06b6d4" >}}
<br>

## タイムライン
{{< timeline >}}

{{< timelineItem icon="github" header="ヘッダー" badge="badge test" subheader="サブヘッダー" >}}
この記事では、「このような場合、どのようにすればよいのでしょうか？このような場合、私は、このようなことをすることはできません。このような場合、私はこのようなことをする必要があります。このような些細なことでも。このような些細なことであっても、私たちは、このようなことを行うことができます。
このような試合は、このような試合ではありません。
{{< /timelineItem >}}


{{< timelineItem icon="code" header="html" badge="date - present" subheader="Awesome Subheader" >}}
With html code
<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>
{{< /timelineItem >}}

{{< timelineItem icon="star" header="Shortcodes" badge="AWESOME" >}}
With other shortcodes
{{< gallery >}}
  <img src="gallery/denden.jpg" class="grid-w33" />
  <img src="gallery/dendendirect.jpg" class="grid-w33" />
  <img src="gallery/ライブ.jpg" class="grid-w33" />
{{< /gallery >}}
{{< /timelineItem >}}

{{< timelineItem icon="github" header="ぎっとはぶ">}}
{{< github repo="yuubinnkyoku/yuubinnkyoku" >}}
{{< /timelineItem >}}

{{< /timeline >}}

## タイピング
{{< typeit 
  tag=h6
  speed=50
  breakLines=false
  loop=true
>}}
"やりますねぇ" 田所浩二 (1939)
"絶対にありません。確信しています" hikakin_mania (20年前に起きた怪事件)
"バキバキ童帝です" 刃牙道 (1939)
{{< /typeit >}}
<br>

## Youtube Lite
{{< keyword icon="youtube" >}} コントロールあり {{< /keyword >}}
{{< youtubeLite id="p89pkXj93Ak" label="実況動画" params="start=130&end=293&controls=1&loop=1" >}}
<br>
{{< keyword icon="youtube" >}} コントロールなし {{< /keyword >}}
{{< youtubeLite id="p89pkXj93Ak" label="実況動画" params="start=130&end=10&controls=0" >}}

## Youtube
{{< youtube p89pkXj93Ak >}}

(違いはおそらく)ないです。

## Twitter
{{< twitter user="yuubinnkyoku_mk" id="1754875197616713978" >}}

## Twitter Simple
{{< twitter_simple user="yuubinnkyoku_mk" id="1754875197616713978" >}}
あれ
できないな

## Gist
{{< gist yuubinnkyoku d2d9ce0ce4907160cac19324930b8e88 >}}