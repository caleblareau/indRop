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

## Other
This package is designed to plug a gap between the indrops pipeline and Seurat. 
