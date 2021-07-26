library(covid19.analytics)

#data
ag <- covid19.data(case = "aggregated")
tsc <- covid19.data(case = "ts-confirmed")

#summary
report.summary(Nentries = 20,
               graphical.output = TRUE)

#total cases as per loation
tots.per.location(tsc,geo.loc = "ukraine")
tots.per.location(ts,geo.loc = "india","ukraine" )
tots.per.location(tsc,geo.loc = "austria","australia")
tots.per.location(tsc,geo.loc = c("india" , "peru", "austria" , "canada", "australia", "netherlands", "ukraine", "peru", "belgium"))

#growth rate as per location
growth.rate(tsc,geo.loc = "india")
growth.rate(tsc,geo.loc = c("india","france","canada"))


#world map
live.map(tsc)

#sir model (healthy but susceptible to disease)
generate.SIR.model(tsc, "india", tot.population = 170000000)

#convert us population
generate.SIR.model(tsc, "Us" , tot.population = 331002651)
