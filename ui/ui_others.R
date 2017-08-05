tabPanel('others', value = 'tab_others',

	navlistPanel(id = 'navlist_others',
    well = FALSE,
    widths = c(2, 10),

    source('ui/ui_plotly.R', local = TRUE)[[1]]
    # source('ui/ui_rbokeh.R', local = TRUE)[[1]],
    # source('ui/ui_highcharts.R', local = TRUE)[[1]]
 #    source('ui/ui_gbar2.R', local = TRUE)[[1]],
 #    source('ui/ui_gbox.R', local = TRUE)[[1]],
 #    source('ui/ui_gbox2.R', local = TRUE)[[1]],
 #    source('ui/ui_ghist.R', local = TRUE)[[1]],
	# source('ui/ui_gscatter.R', local = TRUE)[[1]],
 #    source('ui/ui_gpie.R', local = TRUE)[[1]],
 #    source('ui/ui_gline.R', local = TRUE)[[1]],
 #    source('ui/ui_gline2.R', local = TRUE)[[1]]

  )
)
