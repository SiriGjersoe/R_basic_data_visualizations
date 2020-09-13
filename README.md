    library(ggplot2)

-   loading data frame \*
-   Some basic data visualizations in R studio This data is from my
    linguistic field work \*

<!-- -->

    dat <- read.csv("subsetdataLexMidpointF0.csv", sep = ",")

Q plot
======

-   This quick plots shows the fundamental frequency of measured in the
    midpoint (y-axis) and onset of the vowel (x-axis) of six speakers.

<!-- -->

    qplot(vowelOnsetF0, midpointF0, data = dat, color = Speaker)

![](README_files/figure-markdown_strict/unnamed-chunk-3-1.png)

ggplot with some more specifications
====================================

    ggplot() + geom_point(data = dat, aes(x = vowelOnsetF0, y = midpointF0, shape = Speaker)) +
      ggtitle("Midpoint of fundamental frequency")

![](README_files/figure-markdown_strict/unnamed-chunk-4-1.png)

      theme(plot.title = element_text(hjust = 0.5))

    ## List of 1
    ##  $ plot.title:List of 11
    ##   ..$ family       : NULL
    ##   ..$ face         : NULL
    ##   ..$ colour       : NULL
    ##   ..$ size         : NULL
    ##   ..$ hjust        : num 0.5
    ##   ..$ vjust        : NULL
    ##   ..$ angle        : NULL
    ##   ..$ lineheight   : NULL
    ##   ..$ margin       : NULL
    ##   ..$ debug        : NULL
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_text" "element"
    ##  - attr(*, "class")= chr [1:2] "theme" "gg"
    ##  - attr(*, "complete")= logi FALSE
    ##  - attr(*, "validate")= logi TRUE

    ###### Defining a grey scale
    # cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

    # To use for fills, add
    # scale_fill_manual(values=cbPalette)
    library(lme4)

    ## Loading required package: Matrix

    library(Matrix)
    library(lmerTest)

    ## 
    ## Attaching package: 'lmerTest'

    ## The following object is masked from 'package:lme4':
    ## 
    ##     lmer

    ## The following object is masked from 'package:stats':
    ## 
    ##     step

    library(car)

    ## Loading required package: carData

    ## Registered S3 methods overwritten by 'car':
    ##   method                          from
    ##   influence.merMod                lme4
    ##   cooks.distance.influence.merMod lme4
    ##   dfbeta.influence.merMod         lme4
    ##   dfbetas.influence.merMod        lme4

    library(effects)

    ## lattice theme set by effectsTheme()
    ## See ?effectsTheme for details.

    # lmerSt3 <- lmer(Midpoint_ST ~ Tone * SentenceType + (1|Speaker), data = dat)

    ggplot() + geom_point(data = dat, aes(x=midpointF0, y=SlopeF0, shape=Tone), size = 3) +
      ggtitle("Effects of the F0 midpoint and slope of nuclei by tone")  +
      theme_light() +theme(legend.text=element_text(size=rel(1))) +
      theme(plot.title = element_text(hjust = 0.4)) + ylab("F0 slope of nucleus") + xlab("F0 midpoint nucleus") 

![](README_files/figure-markdown_strict/unnamed-chunk-5-1.png)
