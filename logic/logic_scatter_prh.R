source('helper/scatterly.R')
source('helper/boscatter.R')

observeEvent(input$button_split_no, {

        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'scatly_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'scatly_select_y',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'boscat_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'boscat_select_y',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'scatly_select_x',
              choices = '', selected = '')
             updateSelectInput(session, 'scatly_select_y',
              choices = '', selected = '')
             updateSelectInput(session, 'boscat_select_x',
              choices = '', selected = '')
             updateSelectInput(session, 'boscat_select_y',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'scatly_select_x', choices = names(num_data))
             updateSelectInput(session, 'scatly_select_y', choices = names(num_data))
             updateSelectInput(session, 'boscat_select_x', choices = names(num_data))
             updateSelectInput(session, 'boscat_select_y', choices = names(num_data))
        }

})

observeEvent(input$submit_part_train_per, {

        num_data <- final_split$train[, sapply(final_split$train, is.numeric)]
        if (is.null(dim(num_data))) {
            k <- final_split$train %>% map(is.numeric) %>% unlist()
            j <- names(which(k == TRUE))
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'scatly_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'scatly_select_y',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'boscat_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'boscat_select_y',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'scatly_select_x',
              choices = '', selected = '')
             updateSelectInput(session, 'scatly_select_y',
              choices = '', selected = '')
             updateSelectInput(session, 'boscat_select_x',
              choices = '', selected = '')
             updateSelectInput(session, 'boscat_select_y',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'scatly_select_x', choices = names(num_data))
             updateSelectInput(session, 'scatly_select_y', choices = names(num_data))
             updateSelectInput(session, 'boscat_select_x', choices = names(num_data))
             updateSelectInput(session, 'boscat_select_y', choices = names(num_data))
        }
})


output$scatly_plot_1 <- renderPlotly({
  scatterly(data = final_split$train, y = input$scatly_select_y, 
    x = input$scatly_select_x, title = input$scatly_title, show_legend = FALSE,
    x_title = input$scatly_xlabel, y_title = input$scatly_ylabel)
})

output$boscat_plot_1 <- renderRbokeh({
  bokatter(data = final_split$train, y_data = input$boscat_select_y, 
    x_data = input$boscat_select_x, fig_title = input$boscat_title, 
    x_lab = input$boscat_xlabel, y_lab = input$boscat_ylabel)
})
