# Surface library
**All of the following functions, except for load_texture and create_font, can only be called from a paint callback**

Table of Content

[**renderer.create_font**](https://github.com/Aviarita/surface#renderercreate_fontwindows_font_name-tall-weight-flags)<br>
[**renderer.localize_string**](https://github.com/Aviarita/surface#rendererlocalize_stringtext)<br>
[**renderer.draw_text**](https://github.com/Aviarita/surface#rendererdraw_textx-y-r-g-b-a-font-text)<br>
[**renderer.draw_localized_text**](https://github.com/Aviarita/surface#rendererdraw_localized_textx-y-r-g-b-a-font-text)<br>
[**renderer.draw_line**](https://github.com/Aviarita/surface#rendererdraw_linex0-y0-x1-y1-r-g-b-a)<br>
[**renderer.draw_filled_rect**](https://github.com/Aviarita/surface#rendererdraw_filled_rectx-y-w-h-r-g-b-a)<br>
[**renderer.draw_outlined_rect**](https://github.com/Aviarita/surface#rendererdraw_outlined_rectx-y-w-h-r-g-b-a)<br>
[**renderer.draw_filled_outlined_rect**](https://github.com/Aviarita/surface#rendererdraw_filled_outlined_rectx-y-w-h-r0-g0-b0-a0-r1-g1-b1-a1)<br>
[**renderer.draw_filled_gradient_rect**](https://github.com/Aviarita/surface#rendererdraw_filled_gradient_rectx-y-w-h-r0-g0-b0-a0-r1-g1-b1-a1-horizontal)<br>
[**renderer.draw_outlined_circle**](https://github.com/Aviarita/surface#rendererdraw_outlined_circlex-y-r-g-b-a-radius-segments)<br>
[**renderer.test_font**](https://github.com/Aviarita/surface#renderertest_fontx-y-r-g-b-a-font)<br>
[**renderer.get_mouse_pos**](https://github.com/Aviarita/surface#rendererget_mouse_pos)<br>
[**renderer.set_mouse_pos**](https://github.com/Aviarita/surface#rendererset_mouse_posx-y)<br>
[**renderer.get_text_size**](https://github.com/Aviarita/surface#rendererget_text_sizefont-text)<br>
[**renderer.load_texture**](https://github.com/Aviarita/surface#rendererload_texturefilename)<br>

### renderer.create_font(windows_font_name, tall, [weight](https://github.com/Aviarita/surface/blob/master/README.md#create_font_weights), [flags](https://github.com/Aviarita/surface/blob/master/README.md#create_font_flags))
    windows_font_name - Windows font name, only supports .ttf.
    tall              - Font size.
    weight            - Font thickness/weight.
    flags             - Text flags, this can be a table, for example {0x001, 0x002}
    Returns a special value that can be passed to draw_text, draw_localized_string, test_font and get_text_size
    
### renderer.draw_text(x, y, r, g, b, a, font, text)
    x - Screen coordinate
    y - Screen coordinate
    r - Red (1-255)
    g - Green (1-255)
    b - Blue (1-255)
    a - Alpha (1-255)
    font - Returned value of renderer.create_font
    text - Text that will be drawn
    
### renderer.localize_string(text)
    text - #SFUI_ or other localized strings from csgo/resources/csgo_<language>.txt, that will be drawn
    Returns the localized string
    
### renderer.draw_localized_text(x, y, r, g, b, a, font, text)
    x - Screen coordinate
    y - Screen coordinate
    r - Red (1-255)
    g - Green (1-255)
    b - Blue (1-255)
    a - Alpha (1-255)
    font - Returned value of renderer.create_font
    text - #SFUI_ or other localized strings from csgo/resources/csgo_<language>.txt, that will be drawn
    
### renderer.draw_line(x0, y0, x1, y1, r, g, b, a)
    x0 - Screen coordinate of point A
    y0 - Screen coordinate of point A
    x1 - Screen coordinate of point B
    y1 - Screen coordinate of point B
    r - Red (1-255)
    g - Green (1-255)
    b - Blue (1-255)
    a - Alpha (1-255)

### renderer.draw_filled_rect(x, y, w, h, r, g, b, a)
    x - Screen coordinate
    y - Screen coordinate
    w - Width in pixels
    h - Height in pixels
    r - Red (1-255)
    g - Green (1-255)
    b - Blue (1-255)
    a - Alpha (1-255)
    

### renderer.draw_outlined_rect(x, y, w, h, r, g, b, a)
    x - Screen coordinate
    y - Screen coordinate
    w - Width in pixels
    h - Height in pixels
    r - Red (1-255)
    g - Green (1-255)
    b - Blue (1-255)
    a - Alpha (1-255)
    
### renderer.draw_filled_outlined_rect(x, y, w, h, r0, g0, b0, a0, r1, g1, b1, a1)
    x - Screen coordinate
    y - Screen coordinate
    w - Width in pixels
    h - Height in pixels
    r0 - Filled Red (1-255)
    g0 - Filled Green (1-255)
    b0 - Filled Blue (1-255)
    a0 - Filled Alpha (1-255)
    r1 - Outline Red (1-255)
    g1 - Outline Green (1-255)
    b1 - Outline Blue (1-255)
    a1 - Outline Alpha (1-255)
    
### renderer.draw_filled_gradient_rect(x, y, w, h, r0, g0, b0, a0, r1, g1, b1, a1, horizontal)
    x - Screen coordinate
    y - Screen coordinate
    w - Width in pixels
    h - Height in pixels
    r0 - Red (1-255)
    g0 - Green (1-255)
    b0 - Blue (1-255)
    a0 - Alpha (1-255)
    r1 - Red (1-255)
    g1 - Green (1-255)
    b1 - Blue (1-255)
    a1 - Alpha (1-255)
    horizontal - Left to right. Pass true for horizontal gradient, or false for vertical
    
### renderer.draw_outlined_circle(x, y, r, g, b, a, radius, segments)
    x - Screen coordinate
    y - Screen coordinate
    r - Red (1-255)
    g - Green (1-255)
    b - Blue (1-255)
    a - Alpha (1-255)
    radius - Radius of the circle in pixels.
    segments - How many edges the circle should have
    
### renderer.test_font(x, y, r, g, b, a, font)
    x - Screen coordinate
    y - Screen coordinate
    r - Red (1-255)
    g - Green (1-255)
    b - Blue (1-255)
    a - Alpha (1-255)
    font - Returned value of renderer.create_font
    

### renderer.get_mouse_pos()
    Returns current mosue coordinates x, y
    
### renderer.set_mouse_pos(x, y)
    x - Screen coordiantes
    y - Screen coordiantes
    
### renderer.get_text_size(font, text)
    font - Returned value of renderer.create_font
    text - Text that will be measured
    Returns width, height.
    
### renderer.load_texture(filename)
    filename - .vmt file from csgo/materials
    Returns an integer that can be passed to renderer.texture
    
# Custom argument types
    
### create_font_weights
    THIN       = 100
    EXTRALIGHT = 200
    LIGHT      = 300
    NORMAL     = 400
    MEDIUM     = 500
    SEMIBOLD   = 600
    BOLD       = 700
    EXTRABOLD  = 800
    HEAVY      = 900
    
### create_font_flags 
    FONTFLAG_NONE           = 0x000
    FONTFLAG_ITALIC         = 0x001
    FONTFLAG_UNDERLINE      = 0x002
    FONTFLAG_STRIKEOUT      = 0x004
    FONTFLAG_SYMBOL         = 0x008
    FONTFLAG_ANTIALIAS      = 0x010
    FONTFLAG_GAUSSIANBLUR   = 0x020
    FONTFLAG_ROTARY         = 0x040
    FONTFLAG_DROPSHADOW     = 0x080
    FONTFLAG_ADDITIVE       = 0x100
    FONTFLAG_OUTLINE        = 0x200
    FONTFLAG_CUSTOM         = 0x400
    FONTFLAG_BITMAP         = 0x800
