
class HomePage
    include Capybara::DSL

    def open
        visit 'https://starbugs-qa.vercel.app/'
    end

    def coffee_list
        return all('.coffee-item')
    end

    def buy(coffee_name)
        product = first('.coffee-item', text: /#{Regexp.escape(coffee_name)}/i)
        raise "Produto '#{coffee_name}' não encontrado" unless product
        product.find('.buy-coffee').click
    end     
end