local match = std.native('regexp.MatchString');
local sort(envs) =
  local _ = std.sort(envs);
  envs;

function(param) sort([
  {
    name: "action's ref should be full length commit SHA",
    location: {
      job: job.key,
      uses: job.value.uses,
    },
  }
  for job in std.objectKeysValues(param.data.value.jobs)
  if std.objectHas(job.value, 'uses') && !match('@[a-fA-f0-9]{40}$', job.value.uses)
] + [
  {
    name: "action's ref should be full length commit SHA",
    location: {
      job: job.key,
      [if std.objectHas(step, 'name') then 'step_name']: step.name,
      [if std.objectHas(step, 'id') then 'step_id']: step.id,
      uses: step.uses,
    },
  }
  for job in std.objectKeysValues(param.data.value.jobs)
  for step in std.get(job.value, 'steps', [])
  if std.objectHas(step, 'uses') && !match('@[a-fA-f0-9]{40}$', step.uses)
])
