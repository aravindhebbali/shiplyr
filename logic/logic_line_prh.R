source('helper/linely.R')
source('helper/boline.R')

observeEvent(input$button_split_no, {
        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'linely_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'boline_select_x',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'linely_select_x', choices = '', selected = '')
             updateSelectInput(session, 'boline_select_x', choices = '', selected = '')
        } else {
             updateSelectInput(session, 'linely_select_x', choices = names(num_data))
             updateSelectInput(session, 'boline_select_x', choices = names(num_data))
        }

})

observeEvent(input$submit_part_train_per, {
        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'linely_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'boline_select_x',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'linely_select_x', choices = '', selected = '')
             updateSelectInput(session, 'boline_select_x', choices = '', selected = '')
        } else {
             updateSelectInput(session, 'linely_select_x', choices = names(num_data))
             updateSelectInput(session, 'boline_select_x', choices = names(num_data))
        }
})


output$linely_plot_1 <- renderPlotly({
  linely(data = final_split$train, x = input$linely_select_x, 
    title = input$linely_title, x_title = input$linely_xlabel,
    y_title = input$linely_ylabel)
})

output$boline_plot_1 <- renderRbokeh({
  boline(data = final_split$train, x_data = input$boline_select_x, 
    fig_title = input$boline_title, x_lab = input$boline_xlabel,
    y_lab = input$boline_ylabel)
})
