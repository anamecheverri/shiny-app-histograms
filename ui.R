library(shiny)

# Define UI for application that draws curves of different distributions:
# Normal
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Histograms by Distribution Type"),
  p("Select a Distribution Type and you will see the histogram for data with that distribution"),
  p(""),
  p(""),
  # Sidebar with a radio button input for the distribution type
  sidebarLayout(
    sidebarPanel(
      radioButtons("dist", "Distribution type:",
                   c("Normal" = "norm",
                     "Poisson" = "pois",
                     "Binomial" = "binom",
                     "Uniform" = "unif",
                     "Log-normal" = "lnorm",
                     "Exponential" = "exp",
                     "Geometric" = "geom",
                     "Logistic" = "logis"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      plotOutput("NormPlot")
    )
  )
))