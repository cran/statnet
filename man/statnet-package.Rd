\name{statnet-package}
\alias{statnet-package}
\alias{statnet}
\docType{package}
\title{
Easily Install and Load the \code{statnet} Packages for Statistical Network Analysis
}
\description{
\code{statnet} is a collection of software packages for statistical network 
analysis that are designed to work together, with a common data structure
and API, to provide seamless access to 
a broad range of network analytic and graphical methodology.  This package
is designed to make it easy to install and load multiple
\code{statnet} packages in a single step.

\code{statnet} software implements recent advances in network modeling based on
exponential-family random graph models (ERGM), as well as latent space
models and more traditional descriptive network methods. This
provides a comprehensive framework for cross-sectional and
dynamic network analysis: tools for description, network visualization
model estimation, model evaluation, model-based network simulation.  
The statistical estimation and simulation functions
are based on a central Markov chain Monte Carlo (MCMC) algorithm that
has been optimized for speed and robustness.

The code is actively developed and maintained by the \code{statnet} development team.
New functionality is being added over time.  
}

\details{
  \code{statnet} packages are written in a combination of \R and
  \code{C} It is usually used interactively from within the \R graphical
  user interface via a command line. it can also be used in
  non-interactive (or ``batch'') mode to allow longer or multiple tasks
  to be processed without user interaction.  The suite of packages are
  available on the Comprehensive \R Archive Network (CRAN) at
  \url{https://www.r-project.org/} and also on the \code{statnet} project
  website at \url{http://www.statnet.org/}

  The suite of packages has the following components (those automatically
  downloaded with the \pkg{statnet} package are noted):
  
  For data handling:
  
  \itemize{

    \item \pkg{network} is a package to create, store, modify and plot
    the data in network objects.  The \code{\link[network]{network}}
    object class, defined in the \pkg{network} package, can represent a
    range of relational data types and it supports arbitrary vertex /
    edge /graph attributes. Data stored as
    \code{\link[network]{network}} objects can then be analyzed using
    all of the component packages in the \pkg{statnet} suite. 
    (automatically downloaded)

    \item \pkg{networkDynamic} extends \pkg{network} with functionality
    to store information about about evolution of a network over time,
    defining a \code{\link[networkDynamic]{networkDynamic}} object
    class. 
    (automatically downloaded)
    }
    
  For analyzing cross-sectional networks:

  \itemize{
  
    \item \pkg{sna} is a set of tools for traditional social network
    analysis. 
    (automatically downloaded)

    \item \pkg{ergm} is a collection of functions to fit, simulate from,
    plot and evaluate exponential random graph models. The main
    functions within the \pkg{ergm} package are
    \code{\link[ergm]{ergm}}, a function to fit linear exponential
    random graph models in which the probability of a graph is dependent
    upon a vector of graph statistics specified by the user;
    \code{simulate}, a function to simulate random graphs using an ERGM;
    and \code{\link[ergm]{gof}}, a function to evaluate the goodness of
    fit of an ERGM to the data. \pkg{ergm} contains many other functions
    as well. 
    (automatically downloaded)

    \item \pkg{ergm.count} is an extension to \pkg{ergm} enabling it to
    fit models for networks whose relations are counts. 
    (automatically downloaded)

   \item \pkg{ergm.ego} is an extension to \pkg{ergm} enabling it to
    fit models for networks based on egocentrically sampled network data. 
    (separate download required)

    \item \pkg{ergm.rank} is an extension to \pkg{ergm} enabling it to
    fit models for networks whose relations are ranks. 
    (separate download required)
    
    \item \pkg{latentnet} is a package to fit and evaluate latent position
    and cluster models for statistical networks The probability of a tie
    is expressed as a function of distances between these nodes in a
    latent space as well as functions of observed dyadic level
    covariates. 
    (separate download required)
    
    \item \pkg{degreenet} is a package for the statistical modeling of
    degree distributions of networks. It includes power-law models such
    as the Yule and Waring, as well as a range of alternative models
    that have been proposed in the literature. 
    (separate download required)
    }
    
  For temporal (dynamic) network analysis:
  
  \itemize{
  
    \item \pkg{tsna} is a collection of extensions to \pkg{sna} that provide descriptive
    summary statistics for temporal networks. 
    (automatically downloaded)
    
    \item \pkg{tergm} is a collection of extentions to \pkg{ergm}
      enabling it to fit discrete time models for temporal (dynamic) networks.  
      The main function
      in \pkg{tergm} is \code{stergm} (the ``s'' stands for separable),
      which allows the user to specify one ergm for tie formation, and another ergm
      for tie dissolution.  The models can be fit to network panel data, or to a single
      cross-sectional network with ancillary data on tie duration. 
      (automatically downloaded)

    \item \pkg{relevent} is a package providing tools to fit relational
    event models. 
    (separate download required)
    }
    
  Additional utilities:

  \itemize{
  
   \item \pkg{ergm.userterms} provides a template for users who want to
    implement their own new ERGM terms.
    (separate download required)

    \item \pkg{networksis} is a package to simulate bipartite graphs 
    with fixed marginals through sequential importance sampling.
    (separate download required)
    
    \item \pkg{EpiModel} is a package for simulating epidemics
    (separate download required)
  
  }
  
    
\pkg{statnet} is a metapackage; its only purpose is to provide a convenient
way for a user to load the main packages in the \code{statnet} suite.  
Those can, of course, also be installed individually.

Each package in \code{statnet} has associated help files and internal
documentation, and additional the information can be found on the \code{statnet}
project website (\url{http://www.statnet.org/}).  Tutorials, instructions
on how to join the statnet help
mailing list, references and links to further resources are provided
there.  For the reference paper(s) that provide information on the theory and
methodology behind each specific package
use the \code{citation("packagename")} function in \R after loading \pkg{statnet}.

We have invested much time and effort in creating the
\code{statnet} suite of packages and supporting material
so that others can use and build on these tools.
We ask in return that you cite it when you use it.
For publication of results obtained from \pkg{statnet}, the original
authors are to be cited as described in \code{citation("statnet")}.
If you are only using specific
package(s) from the suite, please cite the specific
package(s) as described in the appropriate
\code{citation("packgename")}.  Thank you!


}

\author{
Mark S. Handcock \email{handcock@stat.ucla.edu},\cr
David R. Hunter \email{dhunter@stat.psu.edu},\cr
Carter T. Butts \email{buttsc@uci.edu},\cr
Steven M. Goodreau \email{goodreau@uw.edu},\cr
Pavel N. Krivitsky \email{pavel@uow.edu.au}, \cr
Skye Bender-deMoll \email{skyebend@skyeome.net}, \cr
Samuel Jenness (for EpiModel) \email{samuel.m.jenness@emory.edu}, and \cr
Martina Morris \email{morrism@uw.edu}

Maintainer: Martina Morris \email{morris@uw.edu}
}
