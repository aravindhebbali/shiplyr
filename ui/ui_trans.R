tabPanel('Trans', value = 'tab_trans', icon = icon('database'),

    navlistPanel(id = 'navlist_trans',
        well = FALSE,
        widths = c(2, 10),

        source('ui/ui_transform2.R', local = TRUE)[[1]],
        source('ui/ui_select.R', local = TRUE)[[1]],
        source('ui/ui_filter.R', local = TRUE)[[1]]

    )
)
