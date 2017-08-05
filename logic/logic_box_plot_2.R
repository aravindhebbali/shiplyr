source('helper/boxly2.R')

observeEvent(input$button_split_no, {
        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'boxly2_select_y',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'boxly2_select_y',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'boxly2_select_y', choices = names(num_data))
        }

        f_data <- final_split$train[, sapply(final_split$train, is.factor)]
        # validate(need(!dim(f_data)[2] == 0, 'No factor variables in the data.'))
        if (is.null(dim(f_data))) {
        k <- final_split$train %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, 'boxly2_select_x',
              choices = names(fdata), selected = names(fdata))
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'boxly2_select_x', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'boxly2_select_x', choices = names(f_data))
        }

})

observeEvent(input$submit_part_train_per, {
        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'boxly2_select_y',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'boxly2_select_y',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'boxly2_select_y', choices = names(num_data))
        }

        f_data <- final_split$train[, sapply(final_split$train, is.factor)]
        # validate(need(!dim(f_data)[2] == 0, 'No factor variables in the data.'))
        if (is.null(dim(f_data))) {
        k <- final_split$train %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, 'boxly2_select_x',
              choices = names(fdata), selected = names(fdata))
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'boxly2_select_x', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'boxly2_select_x', choices = names(f_data))
        }
})


output$boxly2_plot_1 <- renderPlotly({
  boxly2(data = final_split$train, y = input$boxly2_select_y, 
    x = input$boxly2_select_x, title = input$boxly2_title, 
    x_title = input$boxly2_ylabel, y_title = input$boxly2_ylabel)
})