source('helper/piely.R')
source('helper/highpie.R')

observeEvent(input$button_split_no, {

        f_data <- final_split$train[, sapply(final_split$train, is.factor)]
        # validate(need(!dim(f_data)[2] == 0, 'No factor variables in the data.'))
        if (is.null(dim(f_data))) {
        k <- final_split$train %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, 'piely_select_x',
              choices = names(fdata), selected = names(fdata))
        updateSelectInput(session, 'hipie_select_x',
              choices = names(fdata), selected = names(fdata))
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'piely_select_x', choices = '', selected = '')
          updateSelectInput(session, 'hipie_select_x', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'piely_select_x', choices = names(f_data))
          updateSelectInput(session, 'hipie_select_x', choices = names(f_data))
        }
})

observeEvent(input$submit_part_train_per, {

        f_data <- final_split$train[, sapply(final_split$train, is.factor)]
        # validate(need(!dim(f_data)[2] == 0, 'No factor variables in the data.'))
        if (is.null(dim(f_data))) {
        k <- final_split$train %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, 'piely_select_x',
              choices = names(fdata), selected = names(fdata))
        updateSelectInput(session, 'hipie_select_x',
              choices = names(fdata), selected = names(fdata))
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'piely_select_x', choices = '', selected = '')
          updateSelectInput(session, 'hipie_select_x', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'piely_select_x', choices = names(f_data))
          updateSelectInput(session, 'hipie_select_x', choices = names(f_data))
        }
})


output$piely_plot_1 <- renderPlotly({
  piely(data = final_split$train, x = input$piely_select_x, 
    title = input$piely_title, 
    x_title = input$piely_xlabel, y_title = input$piely_ylabel)
})

output$hipie_plot_1 <- renderHighchart({
  highpie(data = final_split$train, column = input$hipie_select_x)
})
