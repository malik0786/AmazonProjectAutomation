*** Settings ***

Library     SeleniumLibrary

*** Keywords ***

Begin Test
    go to    https://www.amazon.ca/
    wait until page contains    amazon.ca
Search for Product
    input text    id=twotabsearchtextbox    ferrari 458
    click button    xpath=//*[@id="nav-search-submit-button"]
    wait until page contains    results for "ferrari 458"
Click on Selected Product
    click link    link=Voltz Toys Kids Licensed Ferrari 458 Ride On Push Car w/Steering Wheel, Horn, Red (83500 Red)
    wait until page contains    Voltz Toys Kids Licensed Ferrari 458 Ride On Push Car w/Steering Wheel, Horn, Red (83500 Red)
Add to Cart
    click button    id=add-to-cart-button
    wait until page contains    Added to Cart
    click button    xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
    wait until page contains    amazon.ca




