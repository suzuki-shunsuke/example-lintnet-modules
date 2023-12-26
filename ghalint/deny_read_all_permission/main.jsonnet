function(param) [
  {
    name: 'read-all permission should not be used',
    failed: true,
    location: {
      job_name: job.key,
    },
  }
  for job in std.objectKeysValues(param.data.value.jobs)
  if std.objectHas(job.value, 'permissions') && job.value.permissions == 'read-all'
]
