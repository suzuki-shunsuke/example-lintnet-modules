# example-lintnet-modules

Examples of [lintnet Modules](https://lintnet.github.io/docs/module)

## Modules

- [ghalint](ghalint): Port of [suzuki-shunsuke/ghalint](https://github.com/suzuki-shunsuke/ghalint), which is a linter for GitHub Actions
- [array](array): [Imported modules](https://lintnet.github.io/docs/module#2-imported-module) for array

## How to use

### Imported modules

```jsonnet
local hello = import 'github.com/suzuki-shunsuke/example-lintnet-modules/hello.jsonnet@v0.1.0';
```

### Lint rule module

```jsonnet
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
        '!.git/**',
        '!node_modules/**',
      ],
      modules: [
        'github.com/suzuki-shunsuke/example-lintnet-modules/newline.jsonnet@v0.1.1',
      ],
    },
  ],
}
```

## LICENSE

[MIT](LICENSE)
