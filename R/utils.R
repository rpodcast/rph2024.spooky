import_user_stories <- function() {
  df <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1b9_zr46l9AXy-lNCqWN1BZYivDwweSZPDHnRy3p-FrA/edit?resourcekey=&gid=1799496718#gid=1799496718")
  return(df)
}

import_speaker_responses <- function() {
  df <- googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1lPOgT7LgjpUGwX0jW1Lq1A-EZJqK5nuFXuv1XXo78Vw/edit?resourcekey=&gid=1231033739#gid=1231033739")
  return(df)
}

