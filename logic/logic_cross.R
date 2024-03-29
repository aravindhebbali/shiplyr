source('helper/cross-table.R')

observeEvent(input$button_split_no, {

    num_data <- final_split$train[, sapply(final_split$train, is.factor)]
    # validate(need(!is.null(dim(num_data)), 'Please select two factor variables.'))
    if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.factor) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'var1_cross',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'var2_cross',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'var1_cross',
              choices = '', selected = '')
             updateSelectInput(session, 'var2_cross',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'var1_cross', choices = names(num_data))
             updateSelectInput(session, 'var2_cross', choices = names(num_data))
        }
    
})

observeEvent(input$submit_part_train_per, {

    num_data <- final_split$train[, sapply(final_split$train, is.factor)]
    # validate(need(!is.null(dim(num_data)), 'Please select two factor variables.'))
    if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.factor) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'var1_cross',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'var2_cross',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'var1_cross',
              choices = '', selected = '')
             updateSelectInput(session, 'var2_cross',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'var1_cross', choices = names(num_data))
             updateSelectInput(session, 'var2_cross', choices = names(num_data))
        }
    
})

# selected data
d_cross <- eventReactive(input$submit_cross, {
    # validate(need((input$var1_cross != '' & input$var2_cross != ''), 'Please select two variables.'))
    data <- final_split$train[, c(input$var1_cross, input$var2_cross)]
    
})

# column names
conames <- reactive({
	colnames(d_cross())
})


cross_out <- eventReactive(input$submit_cross, {
  k <- cross_table(d_cross(), as.character(input$var1_cross), 
    as.character(input$var2_cross))
  k
})

# cross table
output$cross <- renderPrint({
  cross_out()
})


output$cross_bar_stacked <- renderPlot({
  plot(cross_out())
})

output$cross_bar_grouped <- renderPlot({
  plot(cross_out(), beside = TRUE)
})

output$cross_bar_proportional <- renderPlot({
  plot(cross_out(), proportional = TRUE)
})

output$cross_mosaic_plot <- renderPlot({
  mosaicplot(cross_out())
})


