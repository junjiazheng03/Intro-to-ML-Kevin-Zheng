newFCT2 = function(L = 100, P = 10) { ## L = Length of the simulation, P = Number of paths
  ##Next step: use data.frame to return full data if requested
  if (is.numeric(L) == TRUE & is.numeric(P) == TRUE) { ## Check if inputs are valid
    plot(rnorm(L, 0.000, 0.025), type = "l", ylim = c(0, 3), xlab = "Number of Days", 
         ylab = "Expected Value", col="white") ## This path doesn't show up, I left it there because I don't know how to create an empty plot
    for (i in 1:P) { ## Repeat for each path
      data1 = rnorm(L, 0.000, 0.025)
      data2 = data1 + 1
      data3 = cumprod(data2)
      x <- seq(1,L,1)
      y <- data3
      lines(x, y, col="black", type="l")
    }
  }
  else {
    data3 = "404 error"
  }
  ##return(list(finaldata = data3))
}

tmpHolder = newFCT2(L = 200, P=15)
##tmpHolder$finaldata
