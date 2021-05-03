;;; jreport.el - Special code for jreport class.

;;; Code:

(defvar LaTeX-jreport-class-options
  '("a4paper" "a5paper" "b4paper" "b5paper" "a4j" "a5j" "b4j" "b5j"
    "a4p" "b4p" "b5p" "10pt" "11pt" "12pt" "landscape" "tombow" "tombo"
    "mentuke" "oneside" "twoside" "onecolumn" "twocolumn"
    "titlepage" "notitlepage" "openright" "openany" "leqno" "fleqn"
    "openbib" "disablejfam" "mathrmmc" "draft" "final")
  "Class options for the jreport class.")

(TeX-add-style-hook
 "jreport"
 (lambda ()
   (LaTeX-largest-level-set "chapter")
   (LaTeX-add-counters "part" "chapter" "section" "subsection" "subsubsection"
		       "paragraph" "subparagraph" "figure" "table")
   (LaTeX-add-pagestyles "headings" "myheadings")
   (LaTeX-add-environments "abstract"))
 LaTeX-dialect)

;;; jreport.el ends here
