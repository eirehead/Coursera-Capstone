######## function to establish user interface for Shiny app
## Coursera Capstone Project
# created by: Yvonne Tay
# 
# 

library(shiny)

shinyUI(pageWithSidebar(
  
  headerPanel("Word Text Predictor"),
  
  sidebarPanel(
    
    textInput("text", label = h3("Input your text"), 
              value = "Happy Birthday"),
    
    h6(em("Note: program ignore special characters & numbers")),
    
    submitButton("Ok")
    
  ),
  
  mainPanel(
    h4("Twitter - next word predicted:"),
    verbatimTextOutput("twitter_next"),
    h4("Blogs - next word predicted:"),
    verbatimTextOutput("blogs_next"),
    h4("News Sites - next word predicted:"),
    verbatimTextOutput("news_next"),
    
    h6("The prediction algoritihm relies on word frequencies in 
      the English twitter, blogs, and news datasets at:"),
    
    h6(a("http://www.corpora.heliohost.org/")),
    br(),
    h6("All codes can be found in the Coursera 
       Capstone folder at:"),
    h6(a("https://github.com/eirehead/Coursera-Capstone.git"))
    
  )
  
  
))
