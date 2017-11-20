myFirstApp introduction
========================================================
author: SU WEI
date: 2017-11-20
autosize: true

myFirstApp introduction
========================================================

Here, I will introduce my first shiny app named "myFirstApp". You can click the link below to run the app <https://infinityloop.shinyapps.io/myFirstApp/>.

Function included in the app is:
- Switch to your language
- Explore dataset `iris`

Switch to your language
========================================================

In the `Welcome Page`, you can switch the app language.  
(P.S.:In fact the option hasn't been finished, now you can see the affect on the title of this select input).

![](slides-figure/global-setting-1.png)
![](slides-figure/global-setting-2.png)

Dataset iris (1/2)
========================================================

In this section, you can explore the dataset `iris`. Change the X axis and Y axis of scatter plot. You can also change the transparency of points in side panel.  
For example, if you select `Sepal.Length` (x aixs) and `Sepal.Width` (y axis), the plot will present in the page.  

```r
library(plotly)
p <- plot_ly(data = iris, 
             x = ~Sepal.Length, 
             y = ~Sepal.Width,
             color = ~Species,
             type = "scatter",
             mode = "markers")
```

Dataset iris (2/2)
========================================================
Besides the plot, there will be a table under the plot, you can use this table to check each sample.  
![plot of chunk unnamed-chunk-2](slides-figure/unnamed-chunk-2-1.png)