## R/Pharma 2024 Spooky Stories

This repository contains the code used to generate a [Quarto](https://quarto.org) presentation slide deck of the Spooky R Stories submitted by the audience and speakers for the R/Pharma 2024 conference. At the time of this writing, the Google Forms are available at the following links:

* [Speaker Form](https://forms.gle/CbT5mHygq5tfbtSw5)
* [Audience Spooky Story Form](https://forms.gle/8innFnfp53xMrVuu7)

## Development Setup

This project relies on the [`{googlesheets4}`](https://googlesheets4.tidyverse.org/index.html) package to import the Google Sheets containing the form responses. Adapting the procedure documented in the article [How to Connect R to Google Sheets Using googlesheets4](https://www.appsilon.com/post/connect-r-to-google-sheets-using-googlesheets4), here is the procedure to set up authentication.

**NOTE** This procedure assumes the user has the credentials to sign in to the `rinpharmaconf` Google account.

1. Load the `{googlesheets4}` R package and run the `googlesheets4::gs4_auth()` function. You will be asked where to store the credentials in a cache directory. After selecting the default option, you will be prompted to open a browser tab for selecting the account to use for the package. Ensure that the `rinpharmaconf` account is selected.
1. The next screen asks which APIs the "Tidyverse API Packages" can access. Select the Google Sheets API and click Continue.
1. The browser should display "Authentication is complete. Please close this page and return to R."
1. Go back to the `rinpharmaconf` Google account and find the links to the Spreadsheets associated with the above Google forms. These links are used in the wrapper functions `import_user_stories` and `import_speaker_responses`. located in the `R/utils.R` script.
