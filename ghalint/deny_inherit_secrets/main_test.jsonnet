function(param) [
  {
    name: 'pass',
    data_file: 'pass.yaml',
    result: [],
  },
  {
    name: 'fail',
    data_file: 'fail.yaml',
    result: [
      {
        name: 'secrets: inherit should not be used',
        failed: true,
        location: {
          job_name: 'build',
        },
      },
    ],
  },
]
