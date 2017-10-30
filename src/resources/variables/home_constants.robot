*** Variables ***
${SCHEDULE_REMINDER_LINK}  css=a[href="#schedule-reminder-modal"]
${NEWSLETTER_FIELD}  css=input#mce-EMAIL
${NEWSLETTER_SUBMIT_BTN}  css=button#mailing-list-submit
${NEWSLETTER_SUCCESS_MSG}  css=div#mce-success-response
#--- schdule reminder modal ---#
${SCHEDULE_REMINDER_MODAL}  css=#schedule-reminder-modal
${SCHEDULE_OCCASION_FIELD}  css=#occasion
${SCHEDULE_OCCASION_DATE_FIELD}  css=.hasDatepicker
${SCHEDULE_FACEBOOK_BTN}  css=#set-reminder-with-facebook
${SCHEDULE_EMAIL_LINK}  css=#set-reminder-with-email
@{SCHEDULE_REMINDER_ELEMENT_LIST}
...  ${SCHEDULE_REMINDER_MODAL}  ${SCHEDULE_OCCASION_FIELD}
...  ${SCHEDULE_OCCASION_DATE_FIELD}  ${SCHEDULE_FACEBOOK_BTN}
...  ${SCHEDULE_EMAIL_LINK}
${SCHEDULE_EMAIL_FIELD}  css=#reminder-email
${SCHEDULE_CREATE_REMINDER_BTN}  css=#schedule-reminder-submit
#--- datePicker ---#
${DATEPICKER_CONTAINER}  jquery=#ui-datepicker-div
${DAY_ROW_CONTAINER}  jquery=.ui-datepicker-calendar tbody > tr
${PICKER_NEXT_BTN}  css=.ui-datepicker-next
#--- sweet alert ---#
${SUCESS_SCHEDULED_MODAL}  css=.showSweetAlert
