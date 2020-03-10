library(nycflights13)
library(tidyverse)

jan1<- filter(flights,month == 1,day ==1)
(dec25<- filter(flights, month == 12, day == 25))

filter(flights, month ==1)

filter(flights, month ==11 | month ==22)

filter(flights, month %in% c(11,12))

  df <- tibble(x = c(1, NA,3))
filter(df,x>1)

filter(df,is.na(x)|x>1)

arrange(flights, year, month, day)

arrange(flights, desc(arr_delay))

select(flights, year, month, day)
#select all coloum
select(flights, year:day)

select(flights, -(year:day))

rename(flights, tail_num = tailnum)

select(flights,time_hour,air_time,everything())

flights_sml <- select(flights,year:day, ends_with("delay"),distance, air_time)

mutate(flights_sml, gain = arr_delay - dep_delay, speed = distance / air_time * 60)

mutate(flights_sml, gain = arr_delay - dep_delay, hours = air_time * 60,gain_per_hours = gain / hours)

transmute(flights_sml, gain = arr_delay - dep_delay, hours = air_time * 60,gain_per_hours = gain / hours)

by_dest <- group_by(flights, dest)
delay <- summarize(by_dest, count = n(),dist = mean(distance, na.rm = TRUE), delay = mean(arr_delay,na.rm = TRUE))
delay <- filter(delay, count > 20 , dest  != "NHL")

ggplot(data = delay, mapping = aes(x = dist, y = delay)) + geom_smooth(se = FALSE) + geom_point(aes(size = count), alpha = 1/3)