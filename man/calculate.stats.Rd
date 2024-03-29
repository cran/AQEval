% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calculate.stats.R
\name{calculate.stats}
\alias{calculate.stats}
\alias{calcDateRangeStat}
\alias{calcRollingDateRangeStat}
\title{Some functions to calculate statistics}
\usage{
calcDateRangeStat(
  data,
  from = NULL,
  to = NULL,
  stat = NULL,
  pollutant = NULL,
  ...,
  method = 2
)

calcRollingDateRangeStat(
  data,
  range = "year",
  res = "day",
  stat = NULL,
  pollutant = NULL,
  from = NULL,
  to = NULL,
  ...,
  method = 2
)
}
\arguments{
\item{data}{(data.frame, tibble, etc) Data set containing
data statistic to be calculated for, and \code{date}
column of date/time records.}

\item{from}{(various) Start date(s) to subsample from when
calculating statistic, by default end of supplied
\code{data} date range.}

\item{to}{(various) End date(s) to subsample to when
calculating statistic, by default end of supplied
\code{data} date range.}

\item{stat}{(function) Statistic to be applied to selected
data, by default \code{mean(pollutant, na.rm=TRUE)}.}

\item{pollutant}{(character) The name(s) of data-series to
analyse in \code{data}, by default all columns in
supplied data except \code{date}.}

\item{...}{extra arguments.}

\item{method}{(numeric) Method to use when calculating
statistic.}

\item{range}{(character) For \code{calcRollingDateRange},
the range the rolling date windows, by default
\code{'year'} for annual statistic calculations.}

\item{res}{(character) For \code{calcRollingDateRange},
the resolution to calculate the rolling statistic at, by
default \code{'day'} to calculate this once per day.}
}
\value{
These functions return \code{data.frame}s of function
outputs.
}
\description{
Calculate data set statistics for
selected time intervals.
}
\note{
These functions are in development and likely to change
significantly in future versions, please handle with
care.
}
