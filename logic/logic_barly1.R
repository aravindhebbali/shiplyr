source('helper/barly1.R')

observeEvent(input$button_split_no, {

        f_data <- final_split$train[, sapply(final_split$train, is.factor)]
        # validate(need(!dim(f_data)[2] == 0, 'No factor variables in the data.'))
        if (is.null(dim(f_data))) {
        k <- final_split$train %>% map(is.factor) %>% unlist()
        j <- names(which(k == TRUE))
        fdata <- tibble::as_data_frame(f_data)
        colnames(fdata) <- j
        updateSelectInput(session, 'barly1_select_x',
              choices = names(fdata), selected = names(fdata))
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'barly1_select_x', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'barly1_select_x', choices = names(f_data))
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
        updateSelectInput(session, 'barly1_select_x',
              choices = names(fdata), selected = names(fdata))
        } else if (dim(f_data)[2] == 0) {
          updateSelectInput(session, 'barly1_select_x', choices = '', selected = '')
        } else {
          updateSelectInput(session, 'barly1_select_x', choices = names(f_data)) 
        }
})


selectedbarly1 <- reactive({
  req(input$barly1_select_x)
  out <- final_split$train %>%
    select(input$barly1_select_x)
  out
})

ybarly1max <- reactive({
  out <- selectedbarly1() %>%
  select(1) %>%
  table() %>%
  max

  out
})

output$ui_barly1range_min <- renderUI({
  df <- final_split$train
  if (is.null(df)) return(NULL)
  numericInput('barly1_range_min', 'Y Axis Min', value = 0, min = 0)
})

output$ui_barly1range_max <- renderUI({
  df <- final_split$train
  if (is.null(df)) return(NULL)
  numericInput('barly1_range_max', 'Y Axis Max', value = ybarly1max())
})


output$barly1_plot_1 <- renderPlotly({
  barly1(data = final_split$train, x_data = input$barly1_select_x, 
    title = input$barly1_title, 
    x_title = input$barly1_xlabel, y_title = input$barly1_ylabel)
})

output$barly1_plot_2 <- renderPlotly({
  barly1(data = final_split$train, x_data = input$barly1_select_x, 
    title = input$barly1_title, 
    x_title = input$barly1_xlabel, y_title = input$barly1_ylabel,
    b_text = input$barly1_bartext, bar_col = input$barly1_col, 
    bar_l_col = input$barly1_borcol, bar_l_wid = input$barly1_width, 
    bar_gap = input$barly1_gap, bar_opacity = input$barly1_opacity)
})

output$barly1_plot_3 <- renderPlotly({
  barly1(data = final_split$train, x_data = input$barly1_select_x, 
    title = input$barly1_title, 
    x_title = input$barly1_xlabel, y_title = input$barly1_ylabel,
    b_text = input$barly1_bartext, bar_col = input$barly1_col, 
    bar_l_col = input$barly1_borcol, bar_l_wid = input$barly1_width, 
    bar_gap = input$barly1_gap, bar_opacity = input$barly1_opacity,
    axis_range = TRUE, y_min = input$barly1_range_min, y_max = input$barly1_range_max, 
    auto_size = TRUE, x_showgrid = input$barly1_remx, y_showgrid = input$barly1_remy)
})

output$barly1_plot_4 <- renderPlotly({
  barly1(data = final_split$train, x_data = input$barly1_select_x, 
    title = input$barly1_title, 
    x_title = input$barly1_xlabel, y_title = input$barly1_ylabel,
    b_text = input$barly1_bartext, bar_col = input$barly1_col, 
    bar_l_col = input$barly1_borcol, bar_l_wid = input$barly1_width, 
    bar_gap = input$barly1_gap, bar_opacity = input$barly1_opacity,
    axis_range = TRUE, y_min = input$barly1_range_min, y_max = input$barly1_range_max, 
    auto_size = TRUE, x_showgrid = input$barly1_remx, y_showgrid = input$barly1_remy,
    add_annotate = TRUE, x_annotate = input$barly1_text_x_loc, 
    y_annotate = input$barly1_text_y_loc, text_annotate = input$barly1_plottext,
    annotate_xanchor = 'auto', show_arrow = FALSE, 
    ax_annotate = 20, ay_annotate = -40, annotate_family = 'sans-serif',
    annotate_size = input$barly1_textsize, annotate_col = input$barly1_textcolor)
})

output$barly1_plot_5 <- renderPlotly({
  barly1(data = final_split$train, x_data = input$barly1_select_x, 
    title = input$barly1_title, 
    x_title = input$barly1_xlabel, y_title = input$barly1_ylabel,
    b_text = input$barly1_bartext, bar_col = input$barly1_col, 
    bar_l_col = input$barly1_borcol, bar_l_wid = input$barly1_width, 
    bar_gap = input$barly1_gap, bar_opacity = input$barly1_opacity,
    axis_range = TRUE, y_min = input$barly1_range_min, y_max = input$barly1_range_max, 
    auto_size = TRUE, x_showgrid = input$barly1_remx, y_showgrid = input$barly1_remy,
    add_annotate = TRUE, x_annotate = input$barly1_text_x_loc, 
    y_annotate = input$barly1_text_y_loc, text_annotate = input$barly1_plottext,
    annotate_xanchor = 'auto', show_arrow = FALSE, 
    ax_annotate = 20, ay_annotate = -40, annotate_family = 'sans-serif',
    annotate_size = input$barly1_textsize, annotate_col = input$barly1_textcolor)
})
