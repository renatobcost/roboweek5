
* Settings *
Resource        ${EXECDIR}/resources/base.robot

Test Setup      Start Session
Test Teardown   Take Screenshot

* Test Cases *
Deve adicionar um item ao carrinho
    &{restaurante}      Create Dictionary       restaurant=STARBUGS COFFEE        desc=Nada melhor que um café pra te ajudar a resolver um bug.

    Go To Restaurant
    Choose Restaurant       ${restaurante}
    Add To Cart             Starbugs 500 error
    Should Add To Cart      Starbugs 500 error
    Total Cart Should Be    15,60

Deve adicionar 3 itens ao carrinho

    ${cart_json}            Get JSON    cart.json

    Go To Restaurant
    Choose Restaurant       ${cart_json}
    
    FOR     ${product}      IN      @{cart_json["products"]}
        Add To Cart                 ${product["name"]}
        Should Add To Cart          ${product["name"]}
    END
    
    Total Cart Should Be            ${cart_json["total"]}