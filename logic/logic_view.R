output$table <- renderDataTable({
 	final_sample$d
})

observeEvent(input$view2getdata, {
	updateNavbarPage(session, 'mainpage', selected = 'tab_upload')
  updateNavlistPanel(session, 'navlist_up', 'tab_datasources')
})