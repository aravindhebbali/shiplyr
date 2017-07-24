d_regress <- eventReactive(input$submit_regress, {
	# validate(need((input$regress_fmla != ''), 'Please specify model'))
  data <- final_split$train
  k <- ols_regress(input$regress_fmla, data = data)
  k
})

model <- reactive({
	d_regress()
})

output$regress_out <- renderPrint({
    d_regress()
})


# main regression
all_use_n <- reactive({
  k <- model()
  object <- k$model
  formul <- formula(object)  
  data <- eval(object$call$data)
  n <- lm(formul, data = data)
  n
})