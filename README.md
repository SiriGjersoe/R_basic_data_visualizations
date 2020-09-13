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
