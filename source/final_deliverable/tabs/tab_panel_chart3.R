# tab_panel_chart3

library(shiny)

tab_panel_chart3 <-tabPanel(
  h5("Chart 3", style = "color: #8D94B8"),
  p("Scatter Plot of Shootings by State"),
  sidebarLayout(
    sidebarPanel(
      textInput("search", label = "Find a state", value = ""),
    ),
    mainPanel(
      h1("Shootings vs. Deaths by State From 2013-2022"),
      plotlyOutput("scatter"),
      h5("Caption:"),
      p("This chart represents a chosen state and its corresponding number of shootings and deaths occuring on the dates of 01-01-2013 through 05-28-2022")
    )
  )
)