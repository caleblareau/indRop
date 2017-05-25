# Processing and working with indrops data
An R package for basic indrop analyses and data handling


## Install
```
devtools::install_github("caleblareau/indRop")
```

## Functionality
Not a lot presently. What you can do as of version 0.1.0:

- `readIndrop` imports the data to a sparse matrix format that can be quickly incorporated into a Seurat object
- `export10X` to write a sparse matrix that was imported into the 3 file format that's typical of 10X data. 

### Import
Here's a basic emaple of importing multiple indrops datasets and then using them to create a Seurat object. 

```
library(Seurat)
data1 <- "S1.counts.tsv"
data2 <- "S2.counts.tsv"
sm <- readIndrop(c(data1,data2))
seuratObject <- new("seurat", raw.data = sm)
```

### Export
Here's a basic emaple of importing multiple indrops datasets and then exporting them to a 
folder such that the files resemble what 10X usually spits out of CellRanger. Here, these 
three files will be sent to the variable defined by `outFolder`. 

```
data1 <- "S1.counts.tsv"
data2 <- "S2.counts.tsv"
outFolder <- "output1"

sm <- readIndrop(c(data1,data2))
export10X(sm, outFolder)
```

## Description
This package is designed to plug a gap between the [indrops pipeline](https://github.com/indrops/indrops)
and [Seurat](https://github.com/satijalab/seurat). 
