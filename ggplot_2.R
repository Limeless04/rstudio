library(tidyverse)
ggplot(data = diamonds)+ geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds)+ stat_count(mapping = aes(x = cut))

demo <- tribble(
  ~a, ~b,
  "bar_1",20,
  "bar_2",30,
  "bar_3",40
)

ggplot(data = demo)+geom_bar(mapping = aes(x=a,y=b), stat="identity")

ggplot(data = diamonds) + geom_bar(mapping = aes(x= cut, y=..prop.., group=1))

ggplot(data = diamonds) + stat_summary(mapping = aes(x= cut, y= depth),fun.ymin = min,fun.ymax = max,fun.y = median)

diamonds
ggplot(data = diamonds) + geom_bar(mapping = aes(x= cut, color=cut))
stacked_bar <- ggplot(data = diamonds) + geom_bar(mapping = aes(x=cut, fill = clarity))

stacked_bar + coord_polar()

ggplot(data = diamonds, mapping = aes(x=cut, fill = clarity))+geom_bar(alpha = 1/5, position="identity")

ggplot(data = diamonds, mapping = aes(x=cut, color = clarity))+geom_bar(fill = NA, position="identity")

ggplot(data = diamonds) +geom_bar(mapping = aes(x = cut, fill=clarity), position = "fill")

ggplot(data = diamonds) +geom_bar(mapping = aes(x = cut, fill=clarity), position = "dodge")

ggplot(data = mpg) +geom_point(mapping = aes(x = displ, y = hwy), position = "jitter")

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + geom_boxplot()

ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + geom_boxplot() + coord_flip()

nz <- map_data("nz")
ggplot(nz, aes(long, lat,group = group))+geom_polygon(fill = "white",color="black")

nz <- map_data("nz")
ggplot(nz, aes(long, lat,group = group))+geom_polygon(fill = "white",color="black") + coord_quickmap()

bar <- ggplot(data = diamonds) + geom_bar(mapping = aes(x = cut, fill = cut), show.legend = FALSE,width = 1) + theme(aspect.ratio = 1)+ labs(x = NULL, y = NULL) 

bar + coord_flip()
bar + coord_polar()