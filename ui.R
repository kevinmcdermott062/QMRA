shinyUI(fluidPage(
  
  titlePanel(img(src = "PHOWeb_MainLogo.gif")) ,img(src = "bigorb.png", height = 72, width = 72),
 (h4("Web App implementation of the Quantitative Microbial Risk Assessment Tool as developed by Laura Gibson, 2016.")),

 sidebarPanel(
  
  
  column(12, 
         sliderInput("TC", label = h5("1. Please enter Total Coliform per 100 mL. 
                                          If the result is > 80 please enter 81."),
                     min = 0, max = 81, value = 10)),

  
  column(12, 
         sliderInput("Ecoli", label = h5("2. Please enter E.coli per 100 mL. 
                                      If the result is > 80 please enter 81."),
                     min = 0, max = 81, value = 10)),
  
  column (12, selectInput("overgrown", label = h5("3. Is the sample 'overgrown'? (i.e. crowded with non-identifiable bacteria? (Y/N)."), 
              choices = list("Yes" = 1, "No" = 2  ), selected = 2)),
                                 
  column (12, radioButtons("age range", label = h5("4. Please select your age range."),
               choices = list("1-3" = 1, "4-8" = 2,
                              "9-13" = 3, "14-18" = 4,"19-30" = 5, "31-50" = 6, "51-70" = 7, "71 or older" = 7),selected = 1)),  
  
  column (12, selectInput("Sex", label = h5("5. Please select your sex."), 
                          choices = list("Male" = 1, "Female" = 2  ), selected = 1)),

  
  strong(h2("Your Results")),
    
               column(12,
                      radioButtons("Culture result", label = h5("Culture Result"),
                      choices = list("UNSAFE TO DRINK - Evidence of Fecal Contamination." = 1, "SAFE TO DRINK" = 2,
                                                  "Problem with your treatment System" = 3),selected = 1),
               h4("Results")),
 
 (h5("Test Results")),
 #plot0utput("outputId"),
 (h5("What it means:")),
 (h5("What to do...")),
 
 (h5("Estimated Annual Risk of Illness due to E. coli O157:H7 (%)")),
 

 fluidRow(  

   column(4, verbatimTextOutput("TC")),
      
   column(4, verbatimTextOutput("Ecoli"))
 )

 

 
  
  
    
  
 )        
  
)
)