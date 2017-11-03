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

#--- CREATED TRIBUTE ---#
${TRIBUTE_TIMER}  css=.bg-success
${TIP_FIGURE}  jquery=figure:eq(0)
${HELP_FIGURE}  jquery=figure:eq(1)
#- tribute live modal -#
${INVITE_MODAL}  css=#invite-modal .modal-body
${INVITE_MODAL_CLOSE_ICON}  ${INVITE_MODAL} .close
${CUSTOMIZE_AND_SEND_INVITE_BTN}  ${INVITE_MODAL} .invite-button
${UPGRADE_SERVICE}  css=.text-center > a img
#- figure (tip/help) section -#
${TIP_CONTAINER}  css=#help-make
${TIP_VIDEO}  css=#how-to-make-youtube
${INTERCOM_MESSENGER}  jquery=#intercom-container iframe:eq(0)

#--- SETTING FORM ---#
${MANAGE_SEND_FACEBOOK_MESSAGE_BTN}  jquery=.middle-stripe a:eq(0)
${MANAGE_COPY_LINK_BTN}  jquery=.middle-stripe a:eq(1)
${MANAGE_SETTING_FORM}  css=section#manage-info
${MANAGE_SETTING_BUTTON}  jquery=section#manage-index a:eq(4) div
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
