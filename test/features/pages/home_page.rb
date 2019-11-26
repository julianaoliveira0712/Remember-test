class Home_page < SitePrism::Page
    set_url 'userhome'

    element :navbar, '.MuiPaper-root MuiPaper-elevation4 MuiAppBar-root MuiAppBar-positionFixed jss295 MuiAppBar-colorPrimary mui-fixed'
    element :perfil, '.MuiButtonBase-root MuiButton-root MuiButton-text jss300 [aria-controls="simple-menu"]'
    element :dropdown, '.MuiList-root MuiList-padding [role="menu"]'
    element :sair, '.MuiList-root MuiList-padding [text="Sair"]'
    element :button_sair, '.MuiPaper-root MuiPaper-elevation1 jss685 MuiPaper-rounded'
    element :button_add_memoryline, '.MuiSvgIcon-root [focusable="false"]'
    element :ver_memoryline_private, '.MuiSvgIcon-root jss1434 jss1435 [role="presentation"]'
    element :memoryline, 'a[href="/memoryline/?ref=5dc17b59527bb98d2f31a66d&title=Memory Line Vazia"]'

    def verificar_page
        find(navbar)
    end

    def add_memoryline
        button_add_memoryline.click
    end

    def ver_memoryline_private
        ver_memoryline_private.click
    end

    def sair
        perfil.click
    end
    
    def sair
        sair.click
    end

    def memoryline_create_sucess
        find(memoryline)
    end
end