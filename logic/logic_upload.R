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


observe({
  updateSelectInput(
    session,
    inputId = 'sel_data',
    label = '',
    choices = c(input$file1$name, input$file2$name, input$file3$name,
      input$file4$name, input$file5$name, input$file6$name),
    selected = ''
  )
})

ext_type <- reactive({
    ext <- tools::file_ext(input$sel_data)
})


data <- eventReactive(input$submit_seldata, {
  
  if (ext_type() == 'csv') {
    data1()
  } else if (ext_type() == 'excel') {
    data2()
  } else if (ext_type() == 'json') {
    data3()
  } else if (ext_type() == 'sas') {
    data4()
  } else if (ext_type() == 'spss') {
    data5()
  } else if (ext_type() == 'stata') {
    data6()
  }

  # if (input$sel_data == 'csv') {
  #   data1()
  # } else if (input$sel_data == 'excel') {
  #   data2()
  # } else if (input$sel_data == 'json') {
  #   data3()
  # } else if (input$sel_data == 'sas') {
  #   data4()
  # } else if (input$sel_data == 'spss') {
  #   data5()
  # } else if (input$sel_data == 'stata') {
  #   data6()
  # }

})


observeEvent(input$submit_seldata, {
  updateNavbarPage(session, 'mainpage', selected = 'tab_trans')
  updateNavlistPanel(session, 'navlist_trans', 'tab_transform')
})




















