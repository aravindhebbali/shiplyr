boline <- function(fig_height = NULL, fig_width = NULL, fig_title = NULL,
                     x_lab = NULL, y_lab = NULL, xlim_min = NULL, 
                     xlim_max = NULL, ylim_min = NULL, ylim_max = NULL,
                     x_grid = TRUE, y_grid = TRUE, x_axes = 'below', 
                     y_axes = 'left', legend = FALSE, legend_loc = 'top_right',
                     x_data = NULL, y_data = NULL, data = data, 
                     line_group = NULL, l_color = "black", l_type = 1, 
                     l_width = 1, l_alpha = 1, l_legend = FALSE,
                     add_line = FALSE, line_a = NULL, 
                     line_b = NULL, line_v = NULL, line_h = NULL, 
                     line_coef = NULL, line_color  = 'black', 
                     line_alpha = NULL, line_width = 1, line_type = 1, 
                     line_legend = NULL, add_text = FALSE, text_x = NULL,
                     text_y = NULL, point_text = NULL, text_color = 'black',
                     text_alpha = 1, text_angle = 0, text_align = NULL,
                     text_baseline = NULL, text_font = NULL, 
                     text_fontsize = NULL, text_fontstyle = NULL, 
                     text_xoffset = NULL, text_yoffset = NULL, 
                     text_legend = NULL, 
                     modify_title = FALSE, title_align = 'left', title_alpha = 1,
                     title_baseline = 'bottom', title_color = "#444444",
                     title_font = "Helvetica", title_fontsize = 12,
                     title_fontstyle = 'normal', 
                     modify_axis = FALSE, num_minor_ticks = 5, 
                     a_l_t_align = "left", a_l_t_alpha = 1, 
                     a_l_t_baseline = "bottom", a_l_t_color = "#444444", 
                     a_l_t_font = "Helvetica", a_l_t_font_size = "12pt", 
                     a_l_t_font_style = "normal", a_l_alpha = 1, 
                     a_l_color = "black", a_l_width = 1, 
                     m_l_orientation = "horizontal", m_l_t_align = "left", 
                     m_l_t_alpha = 1, m_l_t_baseline = "bottom", 
                     m_l_t_color = "#444444", m_l_t_font = "Helvetica", 
                     m_l_t_font_size = "12pt", m_l_t_font_style = "normal", 
                     m_t_l_alpha = 1, m_t_l_color = "black", 
                     m_t_l_width = 1,  min_t_l_alpha = 1, 
                     min_t_l_color = "black", 
                     min_t_l_width = 1, 
                     modify_grid = FALSE, b_f_alpha = 0, b_f_color = "white", 
                     g_l_alpha = 0, g_l_color = "black", g_l_width = 1,
                     min_g_l_alpha = 0, min_g_l_color = "black", 
                     min_g_l_width = 1, 
                     modify_plot = FALSE, bg_f_color = 'white', bg_f_alpha = 1,
                     bor_f_color = 'black', out_l_alpha = 1,
                     out_l_color = "black", out_l_width = 1,
                     min_bor = 50, min_bor_bottom = 50, min_bor_left = 50,
                     min_bor_right = 50, min_bor_top = 50, 
                     modify_legend = FALSE, bg_fill_alpha = 0.95, bg_fill_color = "#444444",
                     bor_line_alpha = 0.5, bor_line_color = "black",
                     bor_line_width = 1, glyph_h = 20, glyph_w = 20,
                     label_h = 20, lab_t_align = "left",
                     lab_t_alpha = 1, lab_t_baseline = "bottom",
                     lab_t_color = "#444444", lab_t_font = "Helvetica",
                     lab_t_font_size = "12pt", lab_t_font_style = "normal", 
                     lab_w = 50, leg_pad= 10, leg_space = 3) {
  
  suppressWarnings(
    p <- figure(height = fig_height, width = fig_width, title = fig_title,
                xlab = x_lab, ylab = y_lab, xlim = c(xlim_min, xlim_max), 
                ylim = c(ylim_min, ylim_max), x_grid = x_grid, y_grid = y_grid,
                x_axes = x_axes, y_axes = y_axes, legend_loc = legend_loc) %>%
      ly_lines(x = x_data, y = y_data, data = data, group = line_group,
               color = l_color, type = l_type, width = l_width,
               alpha = l_alpha, legend = l_legend) 
  )

  if(modify_title) {
    p <- p %>%
      theme_title(text_align = title_align, text_alpha = title_alpha, 
                text_baseline = title_baseline, text_color = title_color,
                text_font = title_font, text_font_size = title_fontsize,
                text_font_style = title_fontstyle)
  }

  if(modify_axis) {

    p <- p %>%
      theme_axis(which = c("x", "y"), num_minor_ticks = 5, 
               axis_label_text_align = a_l_t_align,
               axis_label_text_alpha = a_l_t_alpha, 
               axis_label_text_baseline = a_l_t_baseline, 
               axis_label_text_color = a_l_t_color, 
               axis_label_text_font = a_l_t_font, 
               axis_label_text_font_size = a_l_t_font_size, 
               axis_label_text_font_style = a_l_t_font_style, 
               axis_line_alpha = a_l_alpha, 
               axis_line_color = a_l_color, 
               axis_line_width = a_l_width, 
               major_label_orientation = m_l_orientation, 
               major_label_text_align = m_l_t_align, 
               major_label_text_alpha = m_l_t_alpha, 
               major_label_text_baseline = m_l_t_baseline, 
               major_label_text_color = m_l_t_color, 
               major_label_text_font = m_l_t_font, 
               major_label_text_font_size = m_l_t_font_size, 
               major_label_text_font_style = m_l_t_font_style, 
               major_tick_line_alpha = m_t_l_alpha, 
               major_tick_line_color = m_t_l_color, 
               major_tick_line_width = m_t_l_width,  
               minor_tick_line_alpha = min_t_l_alpha, 
               minor_tick_line_color = min_t_l_color, 
               minor_tick_line_width = min_t_l_width)
  }  
     
  if(modify_grid) {

    p <- p %>%
      theme_grid(which = c("x", "y"), band_fill_alpha = b_f_alpha,
               band_fill_color = b_f_color, grid_line_alpha = g_l_alpha,
               grid_line_color = g_l_color, grid_line_width = g_l_width,
               minor_grid_line_alpha = min_g_l_alpha, 
               minor_grid_line_color = min_g_l_color, 
               minor_grid_line_width = min_g_l_width)
  }
  
  if(modify_plot) {

    p <- p %>%
      theme_plot(background_fill_color = 'white', 
               background_fill_alpha = 1,
               border_fill_color = 'black',
               outline_line_alpha = 1,
               outline_line_color = "black", outline_line_width = 1,
               min_border = 50, min_border_bottom = 50, min_border_left = 50,
               min_border_right = 50, min_border_top = 50)
  }
  
  if(modify_legend) {

    p <- p %>%
      theme_legend(background_fill_alpha = 0.95, background_fill_color = "#444444",
                 border_line_alpha = 0.5, border_line_color = "black",
                 border_line_width = 1, glyph_height = 20, glyph_width = 20,
                 label_height = 20, label_text_align = lab_t_align,
                 label_text_alpha = lab_t_alpha, 
                 label_text_baseline = lab_t_baseline,
                 label_text_color = lab_t_color, label_text_font = lab_t_font,
                 label_text_font_size = lab_t_font_size,
                 label_text_font_style = lab_t_font_style, label_width = lab_w,
                 legend_padding = leg_pad, legend_spacing = leg_space)
  }
  
  suppressWarnings(
    if(add_line) {
      suppressWarnings(  
        p <- p %>%
          ly_abline(a = line_a, b = line_b, v = line_v, h = line_h,
                    coef = line_coef, color = line_color, width = line_width, 
                    alpha = line_alpha, type = line_type, legend = line_legend)
      )
        
    }
  )
  
  if(add_text) {
    
    p <- p %>%
      ly_text(x = text_x, y = text_y, text = point_text, data = data, 
              color = text_color, alpha = text_alpha, angle = text_angle, 
              align = text_align, baseline = text_baseline, font = text_font,
              font_size = text_fontsize, font_style = text_fontstyle,
              x_offset = text_xoffset, y_offset = text_yoffset,
              legend = text_legend)
    
  }
      
  p
  
}

k <- boline(x_data = 'disp', data = mtcars,
         fig_title = 'Scatter Plot', x_lab = 'Observation',
         y_lab = 'Displacement', xlim_min = 0, xlim_max = 40,
         ylim_min = 0, ylim_max = 600, l_col = 'red', l_type = 3,
         add_line = TRUE,
         line_v = 20, add_text = TRUE, text_x = 20, text_y = 300,
         point_text = 'hello', title_align = 'right', title_font = 'Arial')
