server_fun <- function(input, output, session) {
  
  df <- eventReactive(input$get, {
    gse <- getGEO(input$gse, GSEMatrix = TRUE)[[1]]
    
})
  output$table <- renderDataTable({
    mat <- exprs(df())
    mat
    })
  
  output$tabletar <- renderDataTable({
    target <- pData(df())
    target
  })
  
  output$tablepro <- renderTable({
    genes <- featureNames(df());
    head(genes,n=20)
  })
  output$boxplot<-renderPlot({
    mat <- exprs(df())
    boxplot(mat[,1:20])
  })
  
  output$logboxplot<-renderPlot({
    mat <- exprs(df())
    boxplot(log1p(mat[,1:20]))
  })
  output$dplot<-renderPlot({
    mat <- exprs(df())
    plot(density(mat))
  })
  
  output$hmap<-renderPlot({
    mat <- exprs(df())
    reg2 = regHeatmap(mat)
    plot(reg2)
  })
  output$tablesum<-renderPrint({
    mat <- exprs(df())
    summary(mat)
  })
  
  output$exp <- downloadHandler(
    filename = function() {
         paste( input$gse , "_expr.csv",sep="")
    },
    content = function(file) {
      write.csv(exprs(df()),file,row.names=TRUE,quote=FALSE)
    }
    
  )
  
  output$trg <- downloadHandler(
    filename = function() {
     paste( input$gse , "_targets.csv",sep="")
    },
    content = function(file) {
      write.csv(pData(df()),file,row.names=FALSE,quote=FALSE)
    }
    
  )
  output$prb <- downloadHandler(
    filename = function() {
      paste( input$gse, "_probes.csv",sep="")
      
    },
    content = function(file) {
      write.csv(featureNames(df()),file,row.names=TRUE,quote=FALSE)
    }
    
  )
  output$torig <- downloadHandler(
    filename = function() {
      paste( input$gse , "_targets_orig.csv",sep="")
    },
    content = function(file) {
      write.csv(pData(df()),file,row.names=FALSE,quote=FALSE)
    }
   
    
  )
  output$prbdetail <- downloadHandler(
    filename = function() {
      paste( input$gse , "_probes_detail.csv",sep="")
    },
    content = function(file) {
      write.csv(pData(featureData(df())),file,row.names=TRUE,quote=FALSE)
    }
    
  )
  
}