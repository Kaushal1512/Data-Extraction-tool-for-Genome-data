
tool_ui <- function() {
  sidebarLayout(
    sidebarPanel = sidebarPanel(
      h3("Bioada GSE data Extraction Tool"),
      textInput("gse", "Enter GSE for Extraction", value = "", width = NULL,
                placeholder = NULL),

      actionButton("get", "Extract GSE from GEO", icon = icon("upload")),
      
      checkboxGroupInput("Sol"," Download Files by clicking :  "),
      helpText("Expression File:"),
      downloadButton("exp", "Download the Expression File"),
      helpText("Target File:"),
      downloadButton("trg", "Download the Target File"),
      helpText("Probe File:"),
      downloadButton("prb", "Download the Probes File"),
      helpText("Target_Orig File:"),
      downloadButton("torig", "Download the Target_orig  File"),
      helpText("Probe Details file:"),
      downloadButton("prbdetail", "Download the Probes Detail File")
    
  ),
    mainPanel = mainPanel(
      tabsetPanel(
        tabPanel("Expression File",
                 dataTableOutput("table")),
        tabPanel("Target File",
                 dataTableOutput("tabletar")),
        tabPanel("Probes File",
                 tableOutput("tablepro")),
        tabPanel("BoxPlot",
                 plotOutput("boxplot")),
        tabPanel("Summary",
                 verbatimTextOutput("tablesum")),
        tabPanel("Logarithmic Boxplot",
                 plotOutput("logboxplot")),
        tabPanel("Density plot",
                 plotOutput("dplot")),
        tabPanel("Heat Map",
                 plotOutput("hmap"))
      )
    )
  )
  
}