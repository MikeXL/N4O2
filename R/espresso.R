

plot.caffeine <- function() {
  # load in the dataset
  load('data/caffeine.rdata')

  # do some plots, consider put this into .Rprofile of the package folder?
  require(ggplot2)

  # indicates most of drinks have low caffeine per floz
  qplot(caffeine.mg.per.floz, data=caffeine, binwidth=10)

  # you won't laugh when you see total amount of caffeine taken in your cup
  qplot(caffeine.mg, data=caffeine, binwidth=10)

  # most of drinks come in large cup if not super
  qplot(fl.oz, data=caffeine, binwidth=10)

  # total amount of caffeine mostly consistent for most of the drinks
  qplot(drink, caffeine.mg, data=caffeine)

  # even more consistent for caffeine per floz too
  # however this does not tell you how much caffeine you really take
  # only shows how dense the cup is
  qplot(drink, caffeine.mg.per.floz, data=caffeine)


  ##########################################
  # now let's get start the age old debate #
  #                                        #
  #            BREW vs ESPRESSO            #
  #                                        #
  ##########################################

}
