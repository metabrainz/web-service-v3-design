#!/usr/bin/runghc
import Development.Shake
import Development.Shake.FilePath

main = shake shakeOptions $ do
  want ["v3.html"]
  "v3.html" *> \out -> do
    need [ "v3.md", "template.html" ]
    system' "pandoc" [ "-o", "v3.html", "--toc", "--template", "template.html"
                     , "--highlight-style", "monochrome", "v3.md" ]
