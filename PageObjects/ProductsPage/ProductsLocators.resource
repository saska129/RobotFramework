*** Variables ***
${btnMenu}   id=react-burger-menu-btn
${btnAddBackpack}   id=add-to-cart-sauce-labs-backpack
${btnAddLight}   id=add-to-cart-sauce-labs-bike-light
${btnAddShirt}   id=add-to-cart-sauce-labs-bolt-t-shirt
${btnAddJacket}   id=add-to-cart-sauce-labs-fleece-jacket
${btnAddOnesie}   id=add-to-cart-sauce-labs-onesie
${btnAddRedShirt}   id=add-to-cart-test.allthethings()-t-shirt-(red)
@{btnsAdd}  ${btnAddBackpack}  ${btnAddLight}  ${btnAddShirt}  ${btnAddJacket}  ${btnAddOnesie}  ${btnAddRedShirt}
${ddwSorting}    class=product_sort_container
${selSortingOption}    value=hilo
${lblPrice1Item}   //*[@id="inventory_container"]/div/div[1]/div[2]/div[2]/div
${lblPrice2Item}   //*[@id="inventory_container"]/div/div[2]/div[2]/div[2]/div
${lblPrice3Item}   //*[@id="inventory_container"]/div/div[3]/div[2]/div[2]/div
${lblPrice4Item}   //*[@id="inventory_container"]/div/div[4]/div[2]/div[2]/div
${lblPrice5Item}   //*[@id="inventory_container"]/div/div[5]/div[2]/div[2]/div
${lblPrice6Item}   //*[@id="inventory_container"]/div/div[6]/div[2]/div[2]/div

${RemoveJacket}  id=remove-sauce-labs-fleece-jacket
