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
        name: 'Job should not set secrets to environment variables',
        location: {
          env: 'API_KEY',
          job: 'build',
        },
      },
      {
        name: 'Job should not set secrets to environment variables',
        location: {
          env: 'GITHUB_TOKEN',
          job: 'build',
        },
      },
    ],
  },
]
