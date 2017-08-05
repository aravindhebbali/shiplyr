source('helper/histly.R')

observeEvent(input$button_split_no, {
        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'histly_select_x',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'histly_select_x',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'histly_select_x', choices = names(num_data))
        }

})

observeEvent(input$submit_part_train_per, {
        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'histly_select_x',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'histly_select_x',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'histly_select_x', choices = names(num_data))
        }
})


output$histly_plot_1 <- renderPlotly({
  histly(data = final_split$train, y = input$histly_select_x, 
    title = input$histly_title, x_title = input$histly_xlabel,
    y_title = input$histly_ylabel)
})