# .Rprofile – Kompatibel mit macOS, Linux und Windows

try({
  is_rstudio <- Sys.getenv("RSTUDIO") == "1"
  sysname <- Sys.info()[["sysname"]]

  # Nur in VSCode aktivieren (nicht in RStudio)
  if (!is_rstudio) {
    # Falls reticulate noch nicht initialisiert wurde
    if (!reticulate::py_available(initialize = FALSE)) {

      if (sysname == "Windows") {
        # Beispiel: Verwende Python von Anaconda auf Windows
        reticulate::use_python("C:/Users/<DEIN_USER>/anaconda3/python.exe", required = TRUE)
        # oder alternativ: reticulate::use_condaenv("base", required = TRUE)

      } else if (sysname == "Darwin") {
        # macOS: Hole Python von Homebrew oder über Sys.which
        py_path <- Sys.which("python3")
        reticulate::use_python(py_path, required = TRUE)

        # oder, wenn du Miniconda nutzt:
        # reticulate::use_condaenv("base", required = TRUE)

      } else {
        # Linux oder andere
        py_path <- Sys.which("python3")
        reticulate::use_python(py_path, required = TRUE)
      }

    }
  }
}, silent = TRUE)
