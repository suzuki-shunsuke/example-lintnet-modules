function(param) [
  {
    name: 'pass',
    data_file: 'README.md',
    result: [
      {
        name: 'files must end with a newline',
        failed: false,
      },
    ],
  },
  {
    name: 'fail',
    data_file: 'testdata/nonewline.txt',
    result: [
      {
        name: 'files must end with a newline',
        failed: true,
      },
    ],
  },
]
