tabPanel('Home', value = 'tab_viz_home',

	navlistPanel(id = 'navlist_vizmenu',
        well = FALSE,
        widths = c(2, 10),

        source('ui/ui_vizhome.R', local = TRUE)[[1]]
    )
)
