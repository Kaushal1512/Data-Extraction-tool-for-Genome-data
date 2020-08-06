# main_file for the main-tabs 
main_ui <- shinyUI(
  navbarPage(
    
    
    img(src='logo.jpg',  height="250%", width="80%",align = "top"),
             tabPanel(h4("Extraction"),
                      tool_ui()
             ),   
             tags$style(type = 'text/css', '.navbar { background-color: #dcdcdc;
                                               font-family: Arial;
                                               font-size: 20px;
                                               color: #000000; }'),
             
              
            
             tabPanel(h4("About"),
                       helpText("version 0.1 (23rd June 2020)", br()),
                       about_ui()
                                )
  )
)
