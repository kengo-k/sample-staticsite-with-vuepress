# TODO

- typescriptの導入
- tailwindcssの導入
- vuetifyなどのライブラリを利用する
- 複数ページによるサイト構成（ページ遷移)
- layoutの適用
- ページングの実装ができるか

##### ソースコードの色分け表示

```jsx
const Hello = () => {
  return <div>Hello!</div>
}
```

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
<HelloComponent/>
