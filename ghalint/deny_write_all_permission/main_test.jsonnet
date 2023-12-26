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
        name: 'write-all permission should not be used',
        failed: true,
        location: {
          job_name: 'build',
        },
      },
    ],
  },
]
