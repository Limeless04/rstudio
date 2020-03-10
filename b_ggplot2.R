library(tidyverse)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

#left
ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y= hwy))

ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y= hwy, linetype = drv))

ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y= hwy, group = drv))

ggplot(data = mpg) + geom_smooth(mapping = aes(x = displ, y= hwy, color = drv), show.legend = FALSE)

ggplot(data = mpg)+ geom_point(mapping = aes(x = displ, y = hwy, color = class)) + geom_smooth(mapping = aes(x = displ, y= hwy, color = class), show.legend = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) + geom_point(mapping = aes(color = class))+geom_smooth()

ggplot() + geom_point(data = mpg, mapping = aes(x = displ, y = hwy))+geom_smooth(data = mpg, mapping = aes(x = displ, y = hwy))