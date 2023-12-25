function(param) [
  {
    name: 'files must end with a newline',
    failed: !std.endsWith(param.data.text, '\n'),
  },
]
