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
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
        location: {
          job: 'build',
          uses: 'tibdex/github-app-token@3beb63f4bd073e61482598c45c71c1019b59b73a',
        },
      },
      {
        name: 'GitHub Actions issueing GitHub Access tokens from GitHub Apps should limit repositories',
        location: {
          job: 'build',
          uses: 'actions/create-github-app-token@46e4a501e119d39574a54e53a06c9a705efc55c9',
        },
      },
    ],
  },
]
