class Home_page < SitePrism::Page
    set_url 'userhome'

    element :remember, 'p[to="/userhome"]'
    element :perfil, 'button[aria-controls="simple-menu"]'
    element :add_memoryline, 'button[aria-label="add"]'
    element :memoryline, 'a[href="/memoryline/?ref=5ddb3c1c4cfb20ff61b7b057&title=HxH"]'
    element :sair, '#sair'
    element :popupCriarMemoryline, '#form-dialog-title'
    element :comment, '#comment-content'
    element :moment, 'img [id="moment-5ddc3abd133eea403ebe0099"]'
    def verificar_page
        assert_text('remember')
    end

    def dropdown(p)
        click_button p 
    end

    def add_memoryline
        add_memoryline.click
    end

    def sair
        perfil.click
        sair.click
    end
    
    def entrarMemoryline
        memoryline.click
    end

    def popupCriarMemoryline
        # assert_text("Nome da MemoryLine")
        fill_in "Nome da MemoryLine", with: 'garantindo o 10'
        click_button 'CRIAR'
    end

    def verMoment
        find(moment).click
    end

    def fazerComment
        fill_in comment, with: 'garantindo o 10'
        element.send_keys :enter
    end



end