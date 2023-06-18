*** Variables ***

${lblCart}   xPath=//*[@class='title'][contains(text(), 'Cart')]
${lblQuantity}   class=cart_quantity_label
${lblDescription}   class=cart_quantity_label
${linCart}    class=shopping_cart_link

${lblBackpack}   xPath=//*[@class='inventory_item_name'][contains(text(), 'Backpack')]
${btnRemoveBackpack}   id=remove-sauce-labs-backpack

${btnCheckout}  id=checkout