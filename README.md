# EC320 Lab #1

https://youtu.be/F-Xfgmd46zM

Prep: Setting up your Workspace (see below)

Assignment: `K01_vectors.R` and `K02_pipe.R`. Upload your knitted html files to Canvas.

## Setting up your Workspace

### Grab a Computer

First things first, you should decide which computer you'd like to do your programming assignments on. It can be a Mac, Windows, or Linux machine: all are equally good. I do absolutely everything on my little macbook air laptop. Please let me know ASAP if you don't have a computer to program on (chromebooks and ipads won't work but there are workarounds I can discuss with you). 

### Download and Install R

Go here: https://cran.r-project.org/ and follow the instructions to download R for your Linux, Windows, or Mac. You should download the latest release. 

Mac users: make sure you know whether you have an Apple silicon mac or an older intel-based mac and make sure that you download the correct version of R. If you're using a mac, you'll also need to install xquartz: https://www.xquartz.org/.

### Install RStudio

Go here: https://posit.co/download/rstudio-desktop/ and click the blue button that says step 2: install RStudio Desktop.

### Open RStudio and Install some Packages

Run these lines of code in your console to make sure you have the tidyverse installed and attached to your current session.

```{r}
install.packages("tidyverse", dependencies = TRUE)
library(tidyverse)
```

Install qelp (quick help): an alternative set of beginner friendly help docs I created (with contributions from previous students) for commonly used functions in R and the tidyverse. Once you have the package installed, you can access the help docs from inside RStudio.

```{r}
install.packages("Rcpp", dependencies = TRUE)
install.packages("devtools", dependencies = TRUE)
```

Type "yes" in your console and then hit enter when you're asked if you want to install from sources. Then you can run the following:

```{r}
library(devtools)
install_github("cobriant/qelp")
```

To test that everything worked, now run:

```{r}
?qelp::install.packages
```

If everything went right, the help docs I wrote on the function `install.packages` should pop up in the lower right hand pane. Whenever you want to read the qelp docs on a function, you type ?, qelp, two colons :: which means “I want the help docs on this function which is from the package qelp”, and then the name of the function you’re wondering about.

### Download this Lab Assignment

Scroll to the top of this page and hit the green button that says Code and then hit Download Zip.

Find the file (probably in your downloads folder). On Macs, opening the file will unzip it. On Windows, you’ll right-click and hit “extract”. Then navigate to the new folder named `EC320_lab1` and double click on the R project `EC320_lab1.Rproj`. RStudio should open. If it doesn’t, open RStudio and go to File > Open Project and then find EC320_lab1.Rproj.

In RStudio, go to the lower righthand panel and hit the folder R. This takes you to a list of two exercises (koans) you’ll complete before Friday at 5pm. The first teaches you about vectors and the second teaches you about pipes. Read the introduction below and then jump into the koans: there's no reason to wait until lab to get started on this.

![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-01.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-02.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-03.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-04.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-05.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-06.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-07.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-08.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-09.jpg)
![](https://github.com/cobriant/tidyverse_illustrated/blob/main/Learning%20the%20Tidyverse-10.jpg)

