// A configuration file of lintnet.
// https://lintnet.github.io/docs/config-file
function(param) {
  targets: [
    {
      data_files: [
        '**/*',
        '!.git/**',
        '!testdata/*',
      ],
      lint_files: [
        'newline.jsonnet',
      ],
    },
  ],
}
