\name{update_statnet}
\alias{update_statnet}
\title{Updates the Component Packages of statnet}
\usage{
update_statnet(\dots)
}
\arguments{
  \item{\dots}{
    Arguments passed to \code{\link{update.packages}}
  }
%  \item{askAboutSuggests}{
%    Logical:  If TRUE, go through the list of packages on the
%    \code{Suggests} line of the \code{statnet/DESCRIPTION} and
%    ask whether to update each one.  If FALSE, ignore the
%    \code{Suggests} line altogether.
%  }
}
\description{
 Updates or, if necessary, installs the component packages of 
\pkg{statnet} that are on \code{CRAN}. This function is
essentially an alias for \code{\link{update.packages}},
and any arguments passed to \code{update_statnet} 
(except \code{oldPkgs} and \code{ask}) are 
passed directly to \code{\link{update.packages}}.  
The function will automatically update those packages listed in the
\code{Depends} and \code{Suggests} lines of the \code{statnet/DESCRIPTION} file.
}
\value{
  \code{update_statnet} returns NULL invisibly.  
}
\details{
  The function tells which packages are being checked.  In addition,
  \code{\link{update.packages}} provides very informative feedback
  whenever a package is out of date.
}
\seealso{
  \code{\link{update.packages}}, \code{\link{install.packages}}
}
\examples{
\dontrun{
# Update from statnet.org
update_statnet(repos="http://csde.washington.edu/statnet")
}
}
\keyword{utilities}
