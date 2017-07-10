# importing data
inFile1 <- reactive({
    if(is.null(input$file1)) {
        return(NULL)
    } else {
        input$file1
    }
})
    
data1 <- reactive({
    if(is.null(inFile1())) {
        return(NULL)
    } else {
        read.csv(inFile1()$datapath,
            header = input$header,
            sep = input$sep,
            quote = input$quote)
    }
})


# importing data
inFile2 <- reactive({
    if(is.null(input$file2)) {
        return(NULL)
    } else {
        input$file2
    }
})
    
data2 <- reactive({
    if(is.null(inFile2())) {
        return(NULL)
    } else {
        ext <- tools::file_ext(inFile2()$name)
        
        file.rename(inFile2()$datapath,
                    paste(inFile2()$datapath, ext, sep="."))
        
        readxl::read_excel(
          path = paste(inFile2()$datapath, ext, sep="."),
          sheet = input$sheet_n
        )
    }
})

# importing data
inFile3 <- reactive({
    if(is.null(input$file3)) {
        return(NULL)
    } else {
        input$file3
    }
})
    
data3 <- reactive({
    if(is.null(inFile3())) {
        return(NULL)
    } else {
        jsonlite::fromJSON(inFile3()$datapath)
    }
})


# importing data
inFile4 <- reactive({
    if(is.null(input$file4)) {
        return(NULL)
    } else {
        input$file4
    }
})
    
data4 <- reactive({
    if(is.null(inFile4())) {
        return(NULL)
    } else {
         haven::read_sas(inFile4()$datapath)
    }
})


inFile5 <- reactive({
    if(is.null(input$file5)) {
        return(NULL)
    } else {
        input$file5
    }
})
    
data5 <- reactive({
    if(is.null(inFile5())) {
        return(NULL)
    } else {
         haven::read_sav(inFile5()$datapath)
    }
})


inFile6 <- reactive({
    if(is.null(input$file6)) {
        return(NULL)
    } else {
        input$file6
    }
})
    
data6 <- reactive({
    if(is.null(inFile6())) {
        return(NULL)
    } else {
         haven::read_stata(inFile6()$datapath)
    }
})


data <- eventReactive(input$submit_seldata, {
  
  if (input$sel_data == 'csv') {
    data1()
  } else if (input$sel_data == 'excel') {
    data2()
  } else if (input$sel_data == 'json') {
    data3()
  } else if (input$sel_data == 'sas') {
    data4()
  } else if (input$sel_data == 'spss') {
    data5()
  } else if (input$sel_data == 'stata') {
    data6()
  }

})























