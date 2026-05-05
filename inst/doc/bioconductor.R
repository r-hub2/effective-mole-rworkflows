## ----echo=FALSE, include=FALSE------------------------------------------------
pkg <- "rworkflows"
library(pkg, character.only = TRUE)
## Skip internet-dependent chunks gracefully when offline
has_net <- requireNamespace("curl", quietly = TRUE) && curl::has_internet()
if (!has_net) {
  message("No internet connection available; ",
          "internet-dependent chunks will be skipped.")
}

## ----eval=has_net-------------------------------------------------------------
v <- "devel"
f1 <- use_workflow(name = paste("rworkflows",v,sep="."),
                   branches = v,
                   runners = construct_runners(bioc = v),
                   preview = TRUE,
                   force_new = TRUE,
                   save_dir = tempdir() # For demo only, use default in practice
                   )

## ----eval=has_net-------------------------------------------------------------
v <- "RELEASE_3_17"
f2 <- use_workflow(name = paste("rworkflows",v,sep="."),
                   branches = v,
                   runners = construct_runners(bioc = v),
                   preview = TRUE,
                   force_new = TRUE,
                   save_dir = tempdir() # For demo only, use default in practice
                   )

## ----Session Info-------------------------------------------------------------
utils::sessionInfo()

