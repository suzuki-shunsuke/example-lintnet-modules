function(param)
  if std.endsWith(param.data.text, '\n') then [] else
    [
      {
        name: 'files must end with a newline',
      },
    ]
