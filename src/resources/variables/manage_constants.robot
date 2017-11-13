*** Variables ***
#--- CUSTOM A TRIBUTE FORM---#
${ADD_A_PHOTO_CONTAINER}  css=.profile-photo-default
${CUSTOMIZED_CONTINUE_BUTTON}  css=button.btn-primary
${QUESTION_ONE_DD}  jquery=select.ember-view:eq(0)
${QUESTION_ONE_FIELD}  jquery=input.optional-field:eq(0)
${QUESTION_TWO_DD}  jquery=select.ember-view:eq(1)
${QUESTION_TWO_FIELD}  jquery=input.optional-field:eq(1)

# --- EMAIL INVITATION FORM---#
${EMAIL_ICON_INVITATION}  css=.fa-envelope-o
${IMPORT_CONTACTS_BTN}  css=.invited-users-import button
${DONE_INVITATION_LINK}  css=.invitations-done-link a
${MANUAL_ENTER_CONTACT_LINK}  jquery=.invited-users-related-links a:eq(0)
${INVITATION_SENT_EMAIL_LINK}  jquery=.invited-users-related-links a:eq(1)
${UPLOAD_CSV_LINK}  jquery=.invited-users-related-links a:eq(2)
${INSTRUCTION_TO_UPLOAD_CSV_MODAL}  css=.invited-users-csv-instructions-modal .modal-content
${LIST_OF_INVITES}  jquery=.invitation-import-invites-container
${LIST_OF_INVITED}  jquery=.invited-users-row-container
${INVITED_ACTION_ICON}  ${LIST_OF_INVITED} .invited-users-actions
${INVITE_REMOVE_ICON}  ${INVITED_ACTION_ICON} .remove
#- remove invited modal -#
${REMOVE_INVITED_MODAL}  jquery=.showSweetAlert
${REMOVE_YES_BUTTON}  ${REMOVE_INVITED_MODAL} button.confirm
#- manual invite form -#
${MANUAL_INVITE_FORM}  css=form.invite-member
${MANUAL_NAME_FIELD}  css=input#name-input
${MANUAL_EMAIL_FIELD}  css=input#email-input
${MAUNL_INVITE_ADD_BUTTON}  ${MANUAL_INVITE_FORM} button.btn-default
${SEND_INVITATION_BUTTON}  css=button.btn-primary
${INVITED_EMAIL}  css=.invited-users-email
${LIST_OF_SUCCESSFUL_INVITE}  css=.invited-users-row
#- reminder sent form -#
${REMINDER_SENT_TABLE}  css=table#reminders-sent
#--- cloudsponge-widget ---#
${CLOUD_SPONGE_WIDGET}  jquery=.cloudsponge-widget
${GENERATE_CSV_WIDGET_BTN}  ${CLOUD_SPONGE_WIDGET} li[data-launcher="csv"]
${CSV_UPLOAD_CONTAINER}  jquery=.cloudsponge-file-upload
${CSV_UPLOAD}  ${CSV_UPLOAD_CONTAINER} + input
${SELECT_ALL_CONTACT}  css=a#cloudsponge-select-all
${GET_CONTACTS_BUTTON}  css=a#cloudsponge-export-button
#--- CREATED TRIBUTE ---#
${TRIBUTE_TIMER}  css=.bg-success
${TIP_FIGURE}  jquery=figure:eq(0)
${HELP_FIGURE}  jquery=figure:eq(1)
${RECORD_BUTTON}  jquery=#record-button
#- tribute live modal -#
${INVITE_MODAL}  css=#invite-modal .modal-body
${INVITE_MODAL_CLOSE_ICON}  ${INVITE_MODAL} .close
${CUSTOMIZE_AND_SEND_INVITE_BTN}  ${INVITE_MODAL} .invite-button
${UPGRADE_SERVICE}  css=.text-center > a img
#- figure (tip/help) section -#
${TIP_CONTAINER}  css=#help-make
${TIP_VIDEO}  css=#how-to-make-youtube
${INTERCOM_MESSENGER}  jquery=#intercom-container iframe:eq(0)
#- Upload Modal -#
${UPLOAD_MODAL}   jquery=#recording-modal2 .modal-content
${UPLOAD_VIA_FACEBOOK}  ${UPLOAD_MODAL} #login-continue-with-facebook
${UPLOAD_VIA_EMAIL}  ${UPLOAD_MODAL} #button-email
${EMAIL_FORM}  jquery=#check_email_form
${UPLOAD_NAME_FIELD}  jquery=#record-modal-email-name
${UPLOAD_EMAIL_FIELD}  jquery=#record-modal-email-email
${UPLOAD_NEXT_BUTTON}  jquery=.record-modal-action-buttons.step-2
${VIDEO_UPLOAD_CONTAINER}  jquery=#ziggeorecord
${UPLOAD_VIDEO_LINK}  jquery=.ba-videorecorder-theme-modern-chooser-file:last
${CONFIRM_VIDEO_BUTTON}  jquery=.ba-videoplayer-theme-modern-rerecord-button:eq(0)
${REDO_VIDEO_BUTTON}    jquery=.ba-videoplayer-theme-modern-rerecord-button:eq(1)
${SUCCESS_UPLOADED_MODAL}  jquery=.modal-body.step-6
${UPLOAD_MODAL_PURCHASE_GIFT_ITEM}  css=.related-link-image

#--- CHECKOUT SECTION ---#
${CHECKOUT_SECTION}  jquery=#checkout-section
${TRIBUTE_VIDEO_BOOK_ITEM}  jquery=.add-to-cart:eq(0)
${BAMBOO_USB_ITEM}  jquery=.add-to-cart:eq(1)
${TRIBUTE_DVD_ITEM}  jquery=.add-to-cart:eq(2)
${TRIBUTE_VIDEO_CARD_ITEM}  jquery=.add-to-cart:eq(3)
${HIGHLIGHT_REEL_ITEM}  css=a.contact-us
@{ADD_TO_CART_ITEM_LOCATORS}
...  ${TRIBUTE_VIDEO_BOOK_ITEM}  ${BAMBOO_USB_ITEM}
...  ${TRIBUTE_DVD_ITEM}  ${TRIBUTE_VIDEO_CARD_ITEM}
${REMOVE_CART_LOCATOR}  css=.remove-from-cart

#--- SETTING FORM ---#
${MANAGE_TRIBUTE_HERO}  jquery=.tribute-hero
${MANAGE_SEND_FACEBOOK_MESSAGE_BTN}  jquery=.middle-stripe a:eq(0)
${MANAGE_COPY_LINK_BTN}  jquery=.middle-stripe a:eq(1)
${MANAGE_SETTING_FORM}  css=section#manage-info
${MANAGE_SEND_REMINDER_BUTTON}  jquery=section#manage-index a:eq(2) div
${MANAGE_RECORD_UPLOAD_VIDEOS_BUTTON}  jquery=section#manage-index a:eq(3) div
${MANAGE_SETTING_BUTTON}  jquery=section#manage-index a:eq(4) div
${MANAGE_FAQ_BUTTON}  jquery=section#manage-index a:eq(5) div
${MANAGE_UPGRADE_LINK}  jquery=h3 > a img
${ADD_EDIT_PASSWORD_CB}  jquery=.ember-checkbox:eq(0)
${SETTING_PASSWORD_FIELD}  jquery=.field:eq(6) .field-input
${SAVE_BUTTON}  css=button.btn-primary
#- schedule field -#
${SETTING_SCHEDULE_FORM}  jquery=.field:last
${SCHEUDLE_HALFWAY_CB}  ${SETTING_SCHEDULE_FORM} .ember-checkbox:eq(0)
${SCHEDULE_DAY_BEFORE_CB}  ${SETTING_SCHEDULE_FORM} .ember-checkbox:eq(1)
${SCHEDULE_DAY_OF_CB}  ${SETTING_SCHEDULE_FORM} .ember-checkbox:eq(2)
${SCHEDULE_DAY_AFTER_CB}  ${SETTING_SCHEDULE_FORM} .ember-checkbox:eq(3)
@{SCHEDULE_CB_LOCATORS}
...  ${SCHEUDLE_HALFWAY_CB}  ${SCHEDULE_DAY_BEFORE_CB}
...  ${SCHEDULE_DAY_OF_CB}  ${SCHEDULE_DAY_AFTER_CB}

#--- TRIBUTE SUCCESS MODAL ---#
${UPDATED_SUCCESS_MODAL}  css=.showSweetAlert
${INITIAL_LOADING}  css=.initial-loading

#--- UPGRADE TRIBUTE MODAL ---#
${UPGRADE_MODAL}  jquery=.modal-sm .modal-body
${UPGRADE_GUESTBOOK_MODAL}  jquery=#upgrade-modal .modal-body
${PACKAGE_OPTION}  jquery=.package-option
${UPGRADE_MODAL_TEXT_OPTION}  ${UPGRADE_GUESTBOOK_MODAL} .title b
${PACKAGE_DIY_OPTION}  ${PACKAGE_OPTION}:eq(0)
${UPGRADE_BTN}  css=#upgrade-button

#--- SHARE / COPY LINK MODAL ---#
${SHARE_MODAL}  css=#share-modal .modal-body
${SHARE_MODAL_COPY_LINK_BTN}  jquery=.share-modal-icon:eq(0)
${SHARE_MODAL_SUCCESS_MESSAGE}  css=.sweet-alert.visible

#--- RECORD / UPLOAD VIDEO SECTION ---#
${RECORD_UPLOAD_VIDEO_SECTION}  jquery=#record-upload
${RECORD_YOUR_VIDEO_ICON}  ${RECORD_UPLOAD_VIDEO_SECTION} .members-icon:EQ(0)
${UPLOAD_VIDEO_TRIBUTE_MEMBER_ICON}  ${RECORD_UPLOAD_VIDEO_SECTION} .members-icon:EQ(1)
${UPLOAD_VIDEO_CONAINER}  ${RECORD_UPLOAD_VIDEO_SECTION} .container
${UPLOAD_SECTION_NAME_FIELD}  ${UPLOAD_VIDEO_CONAINER} .ember-text-field:eq(0)
${UPLOAD_SECTION_EMAIL_FIELD}  ${UPLOAD_VIDEO_CONAINER} .ember-text-field:eq(1)
${UPLOAD_SECTION_UPLOAD_VIDEO_BTN}  ${UPLOAD_VIDEO_CONAINER} input[data-selector="file-input-opt2"]
${UPLOAD_SECTION_FINISH_BUTTON}  ${UPLOAD_VIDEO_CONAINER} .btn-primary

#---- SEND REMINDER SECTION ---#
${SEND_REMINDER_SECTION}  jquery=#send-reminders
${SELECT_ALL_EMAILS_LISTED}  ${SEND_REMINDER_SECTION} .sorting-menu li:eq(0)
${COMPOSE_MESSAGE_BUTTON}  ${SEND_REMINDER_SECTION} button.btn-primary
${SEND_REMINDERS_BUTTON}  jquery=button#send-reminders-send-button
#- send reminder modal -#
${SEND_REMINDER_MODAL}  jquery=.showSweetAlert
${SEND_REMINDER_YES_BTN}  ${SEND_REMINDER_MODAL} .confirm
${SEND_REMINDER_SUCCESS}  ${SEND_REMINDER_MODAL} .sa-success