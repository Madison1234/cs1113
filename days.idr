module days

data days = one | zero
data days = monday | tuesday | wednesday | thursday | friday | saturday |
change: days ->
nextDay: days -> days
nextDay monday = tuesday
nextDay tuesday = wednesday
nextDay wednesday = thursday
nextDay thursday = friday
nextDay friday = saturday
nextDay saturday = sunday
nextDay sunday = monday
