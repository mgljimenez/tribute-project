*** Variables ***
${ADD_TO_CART_TRIBUTE_VIDEO_BOOK}  jquery=button.button-green:eq(0)
${ADD_TO_CART_BAMBOO_USB}  jquery=button.button-green:eq(1)
${ADD_TO_CART_TRIBUTE_DVD}  jquery=button.button-green:eq(2)
${ADD_TO_CART_TRIBUTE_VIDEO_CARD}  jquery=button.button-green:eq(3)
${ADD_TO_CART_CONCIERGE_SERVICE}  jquery=button.button-green:eq(4)
@{ADD_TO_CART_LIST}
...  ${ADD_TO_CART_TRIBUTE_VIDEO_BOOK}  ${ADD_TO_CART_BAMBOO_USB}
...  ${ADD_TO_CART_TRIBUTE_DVD}  ${ADD_TO_CART_TRIBUTE_VIDEO_CARD}
...  ${ADD_TO_CART_CONCIERGE_SERVICE}
${ADD_TO_CART_PRO_HIGHLIGHT}  jquery=button.button-green:eq(5)
${CART_BUTTON}  jquery=.purchase-cart-button
#--- modal ---#
${MODAL_CONTAINER}  jquery=.modal-dialog .modal-content
${MODAL_CLOSE_BUTTON}  ${MODAL_CONTAINER} button.btn-default
#--- CART modal ---#
${QUANTITY_CONTAINER}  jquery=.purchase-cart-item-quantity

