source('helper/group-summary.R')

# descriptive statistics
# observe({
    
#     updateSelectInput(session,
#                       inputId = "var_group",
#                       choices = names(data()),
#                       selected = '')
    
#     updateSelectInput(session,
#                       inputId = "var_grp_summary",
#                       choices = names(data()),
#                       selected = '')
    
# })

observeEvent(input$button_split_no, {

    num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
    fact_data <- final_split$train[, sapply(final_split$train, is.factor)]

    if (is.null(dim(fact_data))) {
      k <- final_split$train %>% map(is.factor) %>% unlist()
      j <- names(which(k == TRUE))
      f_data <- tibble::as_data_frame(fact_data)
      colnames(f_data) <- j
      updateSelectInput(session,
                        inputId = "var_group",
                        choices = names(f_data))
    } else {
      updateSelectInput(session,
                      inputId = "var_group",
                      choices = names(fact_data))

    }

    if (is.null(dim(num_data))) {
        k <- final_split$train %>% map(is.numeric) %>% unlist()
        j <- names(which(k == TRUE))
        numdata <- tibble::as_data_frame(num_data)
        colnames(numdata) <- j
        updateSelectInput(session, inputId = "var_grp_summary",
          choices = names(numdata), selected = names(numdata))
      } else if (ncol(num_data) < 1) {
        updateSelectInput(session, inputId = "var_grp_summary",
          choices = '', selected = '')
      } else {
        updateSelectInput(session, inputId = "var_grp_summary",
          choices = names(num_data), selected = names(num_data))
      }

    
})

observeEvent(input$submit_part_train_per, {

    num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
    fact_data <- final_split$train[, sapply(final_split$train, is.factor)]

    if (is.null(dim(fact_data))) {
      k <- final_split$train %>% map(is.factor) %>% unlist()
      j <- names(which(k == TRUE))
      f_data <- tibble::as_data_frame(fact_data)
      colnames(f_data) <- j
      updateSelectInput(session,
                        inputId = "var_group",
                        choices = names(f_data))
    } else {
      updateSelectInput(session,
                      inputId = "var_group",
                      choices = names(fact_data))

    }

    if (is.null(dim(num_data))) {
        k <- final_split$train %>% map(is.numeric) %>% unlist()
        j <- names(which(k == TRUE))
        numdata <- tibble::as_data_frame(num_data)
        colnames(numdata) <- j
        updateSelectInput(session, inputId = "var_grp_summary",
          choices = names(numdata), selected = names(numdata))
      } else if (ncol(num_data) < 1) {
        updateSelectInput(session, inputId = "var_grp_summary",
          choices = '', selected = '')
      } else {
        updateSelectInput(session, inputId = "var_grp_summary",
          choices = names(num_data), selected = names(num_data))
      }

    
})


# selected data
d_group_summary <- eventReactive(input$submit_gsummary, {
    # validate(need(input$var_group != '', 'Please select a grouping and summary variable.'))
    data <- final_split$train[, c(input$var_group, 
                        input$var_grp_summary)]
})


gsummary_out <- eventReactive(input$submit_gsummary, {
  ko <- group_summary(d_group_summary(), as.character(input$var_group),
                        as.character(input$var_grp_summary))
  ko
})

output$group_summary <- renderPrint({
    gsummary_out()
})

output$box_group_summary <- renderPlot({
  boxplot.group_summary(gsummary_out())    
})

