local match = std.native('regexp.MatchString');
local sort(envs) =
  local _ = std.sort(envs);
  envs;

function(param) sort([
  {
    name: 'Job should not set secrets to environment variables',
    failed: true,
    location: {
      job: job.key,
      env: env.key,
    },
  }
  for job in std.objectKeysValues(param.data.value.jobs)
  for env in sort(std.objectKeysValues(std.get(job.value, 'env', {})))
  if match('\\${{ *github\\.token *}}', env.value) || match('\\${{ *secrets\\.', env.value)
])
