source('helper/ggline2.R')

observeEvent(input$button_split_no, {

        num_data <- cbind(final_split$train[, sapply(final_split$train, is.numeric)],
          final_split$train[, sapply(final_split$train, is.Date)])

         k <- final_split$train %>%
              map(is.numeric) %>%
              unlist()

            t <- final_split$train %>%
              map(is.Date) %>%
              unlist()

            j1 <- names(which(k == TRUE))
            j2 <- names(which(t == TRUE))

            if (length(j1) == 0) {
              j <- j2
            } else if (length(j2) == 0) {
              j <- j1
            } else {
              j <- c(j1, j2)
            }
            
            
        if (is.null(dim(num_data))) {
            numdata <- tibble::as_data_frame(num_data)
            colnames(numdata) <- j
            updateSelectInput(session, 'gline2_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'gline2_y',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'gline2_select_x',
              choices = '', selected = '')
             updateSelectInput(session, 'gline2_y',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'gline2_select_x', choices = names(num_data))
             updateSelectInput(session, 'gline2_y', choices = names(num_data))
        }

        f_data <- final_split$train[, sapply(final_split$train, is.factor)]
        # validate(need(!dim(f_data)[2] == 0, 'No factor variables in the data.'))
        if (is.null(dim(f_data))) {
        h <- final_split$train %>% map(is.factor) %>% unlist()
        q <- names(which(h == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- q
        updateSelectInput(session, inputId = "gline2_group",
            choices = names(fdata))
        updateSelectInput(session, inputId = "gline2_col",
            choices = names(fdata))
        updateSelectInput(session, inputId = "gline2_ltype",
            choices = names(fdata))
        updateSelectInput(session, inputId = "gline2_size",
            choices = names(fdata))
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'gline2_group', choices = '', selected = '')
          updateSelectInput(session, 'gline2_col', choices = '', selected = '')
          updateSelectInput(session, 'gline2_ltype', choices = '', selected = '')
          updateSelectInput(session, 'gline2_size', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'gline2_group', choices = names(f_data))  
          updateSelectInput(session, 'gline2_col', choices = names(f_data))  
          updateSelectInput(session, 'gline2_ltype', choices = names(f_data))  
          updateSelectInput(session, 'gline2_size', choices = names(f_data))  
        }

})

observeEvent(input$submit_part_train_per, {
        num_data <- cbind(final_split$train[, sapply(final_split$train, is.numeric)],
          final_split$train[, sapply(final_split$train, is.Date)])
        k <- final_split$train %>%
          map(is.numeric) %>%
          unlist()

        t <- final_split$train %>%
          map(is.Date) %>%
          unlist()

        j1 <- names(which(k == TRUE))
        j2 <- names(which(t == TRUE))

        if (length(j1) == 0) {
          j <- j2
        } else if (length(j2) == 0) {
          j <- j1
        } else {
          j <- c(j1, j2)
        }
        colnames(num_data) <- j    
        if (is.null(dim(num_data))) {
            numdata <- tibble::as_data_frame(num_data)
            updateSelectInput(session, 'gline2_select_x',
              choices = names(numdata), selected = names(numdata))
            updateSelectInput(session, 'gline2_y',
              choices = names(numdata), selected = names(numdata))
        } else if (ncol(num_data) < 1) {
             updateSelectInput(session, 'gline2_select_x',
              choices = '', selected = '')
             updateSelectInput(session, 'gline2_y',
              choices = '', selected = '')
        } else {
             updateSelectInput(session, 'gline2_select_x', choices = names(num_data), selected = names(num_data))
             updateSelectInput(session, 'gline2_y', choices = names(num_data), selected = names(num_data))
        }

        f_data <- final_split$train[, sapply(final_split$train, is.factor)]
        # validate(need(!dim(f_data)[2] == 0, 'No factor variables in the data.'))
        if (is.null(dim(f_data))) {
        h <- final_split$train %>% map(is.factor) %>% unlist()
        q <- names(which(h == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- q
        updateSelectInput(session, inputId = "gline2_group",
            choices = list('NA' = 'NA', names(fdata)), selected = 'NA')
        updateSelectInput(session, inputId = "gline2_col",
            choices = list('NA' = 'NA', names(fdata)), selected = 'NA')
        updateSelectInput(session, inputId = "gline2_ltype",
            choices = list('NA' = 'NA', names(fdata)), selected = 'NA')
        updateSelectInput(session, inputId = "gline2_size",
            choices = list('NA' = 'NA', names(fdata)), selected = 'NA')
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'gline2_group', choices = '', selected = '')
          updateSelectInput(session, 'gline2_col', choices = '', selected = '')
          updateSelectInput(session, 'gline2_ltype', choices = '', selected = '')
          updateSelectInput(session, 'gline2_size', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'gline2_group', choices = list('NA' = 'NA', names(f_data)), selected = 'NA')  
          updateSelectInput(session, 'gline2_col', choices = list('NA' = 'NA', names(f_data)), selected = 'NA')  
          updateSelectInput(session, 'gline2_ltype', choices = list('NA' = 'NA', names(f_data)), selected = 'NA')  
          updateSelectInput(session, 'gline2_size', choices = list('NA' = 'NA', names(f_data)), selected = 'NA')  
        }
})


output$gline2_plot_1 <- renderPlot({
  ggline2(data = final_split$train, x = input$gline2_select_x, 
    columns = input$gline2_y, groups = input$gline2_group,
    title = input$gline2_title, sub = input$gline2_subtitle,
    xlab = input$gline2_xlabel, ylab = input$gline2_ylabel)
})

output$gline2_plot_2 <- renderPlot({
  ggline2(data = final_split$train, x = input$gline2_select_x, 
    columns = input$gline2_y, groups = input$gline2_group,
    cols = input$gline2_col, ltypes = input$gline2_ltype, 
    sizes = input$gline2_size,
    title = input$gline2_title, sub = input$gline2_subtitle,
    xlab = input$gline2_xlabel, ylab = input$gline2_ylabel)
})
