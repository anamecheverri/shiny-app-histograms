library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$NormPlot <- renderPlot({
    set.seed(124)
    normd <- rnorm(10000)
    poisd <- rpois(10000, lambda = 3)
    binomd <- rbinom(10000, 20, 0.2)
    unifd <- runif(10000)
    lnormd <- rlnorm(10000)
    expd <- rexp(10000)
    geomd <- rgeom(10000,0.2)
    logisd <- rlogis(10000)
    
    
    # draw the distribution
    if (input$dist == "norm")
    {hist(normd, col = 'lightblue', xlab="",border = 'white',main="Histogram of Data with Normal Distribution")}
    if (input$dist == "pois")
    {hist(poisd, col = 'lightblue', xlab="", border = 'white',,main="Histogram of Data with Poisson Distribution")}
    if (input$dist == "binom")
    {hist(binomd, col = 'lightblue', xlab="", border = 'white',main="Histogram of Data with Binomial Distribution (prob=0.2)")}
    if (input$dist == "unif")
    {hist(unifd, col = 'lightblue', xlab="", border = 'white',main="Histogram of Data with Uniform Distribution")}
    if (input$dist == "lnorm")
    {hist(lnormd, col = 'lightblue', xlab="", border = 'white',main="Histogram of Data with Log-Normal Distribution")}
    if (input$dist == "exp")
    {hist(expd, col = 'lightblue', xlab="", border = 'white',main="Histogram of Data with Exponential Distribution")}
    if (input$dist == "geom")
    {hist(geomd, col = 'lightblue', xlab="", border = 'white',main="Histogram of Data with Geometric Distribution (prob=0.2)")}
    if (input$dist == "logis")
    {hist(logisd, col = 'lightblue', xlab="", border = 'white',main="Histogram of Data with Logistic Distribution")}
  })
})