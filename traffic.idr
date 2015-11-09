module traffic 

data color = amber | green | red

nextColor: color -> color 
nextColor green = amber
nextColor amber = red
nextColor red =  green






