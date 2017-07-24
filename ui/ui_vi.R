tabPanel('View', value = 'tab_vi', icon = icon('database'),

    navlistPanel(id = 'navlist_vi',
        well = FALSE,
        widths = c(2, 10),

        source('ui/ui_view.R', local = TRUE)[[1]]

    )
)
