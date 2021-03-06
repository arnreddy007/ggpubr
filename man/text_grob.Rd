% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/text_grob.R
\name{text_grob}
\alias{text_grob}
\title{Create a Text Graphical object}
\usage{
text_grob(
  label,
  just = "centre",
  hjust = NULL,
  vjust = NULL,
  rot = 0,
  color = "black",
  face = "plain",
  size = NULL,
  lineheight = NULL,
  family = NULL,
  ...
)
}
\arguments{
\item{label}{A character or \link{expression} vector.  Other
    objects are coerced by \code{\link{as.graphicsAnnot}}.}

\item{just}{The justification of the text
    relative to its (x, y) location.  If there are two values, the first
    value specifies horizontal justification and the second value specifies
    vertical justification.  Possible string values are: \code{"left"},
    \code{"right"}, \code{"centre"}, \code{"center"}, \code{"bottom"},
    and \code{"top"}.  For numeric values, 0 means left (bottom) alignment
    and 1 means right (top) alignment.
  }

\item{hjust}{A numeric vector specifying horizontal justification.
    If specified, overrides the \code{just} setting.}

\item{vjust}{A numeric vector specifying vertical justification.
    If specified, overrides the \code{just} setting.}

\item{rot}{The angle to rotate the text.}

\item{color}{text font color.}

\item{face}{font face. Allowed values include one of \code{"plain", "bold",
"italic", "bold.italic"}.}

\item{size}{font size (e.g.: size = 12)}

\item{lineheight}{line height (e.g.: lineheight = 2).}

\item{family}{font family.}

\item{...}{other arguments passed to \link[grid]{textGrob}.}
}
\value{
a text grob.
}
\description{
Create easily a customized text grob (graphical object). Wrapper around
  \code{\link[grid]{textGrob}}.
}
\examples{
text <- paste("iris data set gives the measurements in cm",
             "of the variables sepal length and width",
             "and petal length and width, respectively,",
             "for 50 flowers from each of 3 species of iris.",
             "The species are Iris setosa, versicolor, and virginica.", sep = "\n")

# Create a text grob
tgrob <- text_grob(text, face = "italic", color = "steelblue")
# Draw the text
as_ggplot(tgrob)

}
