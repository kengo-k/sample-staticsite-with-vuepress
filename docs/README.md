# 実現したいことリスト

- typescriptの導入
- tailwindcssの導入
- vuetifyなどのライブラリを利用する
- layoutの適用
- ページングの実装ができるか

##### ソースコードの色分け表示

[examples - syntax-highlight](examples/syntax-highlight.md)

##### Markdown中でvueのコードを使う

```html
<ul>
  <li v-for="i in 3">value: {{i}}</li>
</ul>
```
実行結果:
<ul>
  <li v-for="i in 3">value: {{i}}</li>
</ul>

```
1 + 2 = {{ 1 + 2 }}です
```

実行結果:
1 + 2 = {{ 1 + 2 }}です

##### Markdown中でVueコンポーネントを使う

.vuepress/components内にVueコンポーネントを配置することで参照できるようになる。

以下はHelloComponentを定義した例。
```vue
<template>
  <div>HELLO, Vue Component!</div>
</template>

<script>
export default {
  data() {
    return {
    }
  }
}
</script>

```

Markdown内で下記のようにコンポーネントを利用できるようになる。

```jsx
<HelloComponent/>
```

実行結果:

<HelloComponent/>

##### メタ情報へのアクセス

マニュアルを確認するといくつかの事前定義された変数があるが以下の二つが利用する可能性がありそう

`$page`変数

<ul>
  <li v-for="k in Object.keys($page)">
  {{k}}: {{$page[k]}}
  </li>
</ul>

`$site`変数

<ul>
  <li v-for="k in Object.keys($site)">
  {{k}}: {{$site[k]}}
  </li>
</ul>

$site.pagesでページ全体を処理して一覧を生成することができそう
