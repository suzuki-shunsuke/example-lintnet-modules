# example-lintnet-modules

Examples of [lintnet Modules](https://lintnet.github.io/docs/module)

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
