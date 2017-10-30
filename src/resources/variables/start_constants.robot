*** Variables ***
${CREATE_FORM}  css=#create-form
#- tribute details section (step2) -#
${RECIPIENT_NAME_FIELD}  css=input#id_recipients_name
${TRIBUTE_TYPE_DD}  css=select#id_tribute_type
${TRIBUTE_CUSTOM_FIELD}  css=input#id_custom_type
${CUSTOMIZE_URL_LINK}  css=#js-customize-url
${CUSTOM_URL_FORM_CONTAINER}  css=#custom-url-form
${CUSTOM_URL_FIELD}  ${CUSTOM_URL_FORM_CONTAINER} #id_slug
${SUBMISSION_DEADLINE}  css=#id_tribe_submission_deadline

#- package section (step1) -#
${PACKAGE_CONTAINER}  css=.step1 .step-fields
${PACKAGE_DIY_ITEM}  jquery=.package-option:eq(0)
${PACKAGE_CONCIERGE_ITEM}  jquery=.package-option:eq(1)
${PACKAGE_DELUXE_ITEM}  jquery=.package-option:eq(2)

${CONTINUE_BUTTON}  ${CREATE_FORM} [type="submit"]

@{START_ELEMENT_LIST}
...  ${RECIPIENT_NAME_FIELD}  ${TRIBUTE_TYPE_DD}
...  ${CUSTOMIZE_URL_LINK}  ${SUBMISSION_DEADLINE}
...  ${PACKAGE_CONTAINER}  ${CONTINUE_BUTTON}
