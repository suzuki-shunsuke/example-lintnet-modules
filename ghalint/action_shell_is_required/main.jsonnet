local sort(envs) =
  local _ = std.sort(envs);
  envs;

function(param) sort(
  std.filterMap(
    function(step) step.failed,
    function(step) {
      name: 'shell is required if run is set',
      location: step.location,
    },
    std.mapWithIndex(
      function(idx, step) {
        location: {
          index: idx,
          [if std.objectHas(step, 'name') then 'step_name']: step.name,
          [if std.objectHas(step, 'id') then 'step_id']: step.id,
        },
        failed: std.objectHas(step, 'run') && !std.objectHas(step, 'shell'),
      }, std.get(std.get(param.data.value, 'runs', {}), 'steps', [])
    )
  )
)
