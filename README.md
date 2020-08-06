# A shiny application to explore the basics of option valuations.
## Instructions for installation and deployment on ubuntu.

1. Add GPG key <br> 
```$ sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9```
2. Add R repository <br>
```$ sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/' ```
3. Update List <br>
```$ sudo apt update ```
4. Install R <br>
```$ sudo apt install r-base ```
5. Test R install as <br>
```$  sudo -i R```
6. In R terminal install shiny and other required packages with command <br>
```r
pkgs <- c("data.table", "DT", "ggplot2", "knitr", "magrittr", "rmarkdown", "fOptions", "shiny")
install.packages(pkgs)
```
7. To run the project either fork/download the files and run the `app.R`-file, or in R run <br>
```r
shiny::runGitHub('Data-Extraction-tool-for-Genome-data', 'Kaushal1512')
```
OR

```r
shiny::runApp()
```

In order to run the project properly, you need to have the following packages installed: `data.table`, `DT`, `ggplot2`, `knitr`, `magrittr`, `rmarkdown`, `fOptions`,`sde`,`GEOquery`,`DiagrammeR`, `Heatplus` and `shiny`.

To install all packages you can also use 

```r
pkgs <- c("data.table", "DT", "ggplot2", "knitr", "magrittr", "rmarkdown", "fOptions","sde","DiagrameR","Heatplus","shiny")
install.packages(pkgs)
```
To install `GEOquery` first install the Bioconductor manager and follow the link: https://bioconductor.org/packages/release/bioc/html/GEOquery.html

Above instructions will help installing R and deploying shiny on local machine as well AWS with an open port. <br>
For deploying on digital ocean follow this link: https://www.digitalocean.com/community/tutorials/how-to-set-up-shiny-server-on-ubuntu-16-04
