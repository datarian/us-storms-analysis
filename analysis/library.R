statelist <- c("AK", "AL", "AR", "AS", "AZ", "CA", "CO", "CT", "DC", "DE", "FL",
               "GA", "GU", "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA",
               "MD", "ME", "MI", "MH", "MN", "MO", "MS", "MT", "NC", "ND", "NE",
               "NH", "NJ", "NM", "NV", "NY", "OH", "OK", "OR", "PA", "PR", "RI",
               "SC", "SD", "TN", "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV",
               "WY")

stateNameFromCode <-function(x) {
    #read 52 state codes into local variable [includes DC (Washington D.C. and PR (Puerto Rico)]
    st.codes<-data.frame(
        state=as.factor(c("AK", "AL", "AR", "AS", "AZ", "CA", "CO", "CT", "DC",
                          "DE", "FL", "GA", "GU", "HI", "IA", "ID", "IL", "IN",
                          "KS", "KY", "LA", "MA", "MD", "ME", "MI", "MH", "MN",
                          "MO", "MS",  "MT", "NC","ND", "NE", "NH", "NJ", "NM",
                          "NV", "NY", "OH", "OK", "OR", "PA", "PR", "RI", "SC",
                          "SD", "TN", "TX", "UT", "VA", "VI", "VT", "WA", "WI",
                          "WV", "WY")),
        full=as.factor(c("alaska","alabama","arkansas", "american samoa",
                         "arizona","california","colorado", "connecticut",
                         "district of columbia","delaware","florida","georgia",
                         "guam", "hawaii","iowa","idaho","illinois","indiana",
                         "kansas","kentucky", "louisiana","massachusetts",
                         "maryland","maine","michigan", "marshall islands",
                         "minnesota", "missouri","mississippi","montana",
                         "north carolina","north dakota", "nebraska",
                         "new hampshire","new jersey","new mexico","nevada",
                         "new york","ohio","oklahoma","oregon","pennsylvania",
                         "puerto rico", "rhode island","south carolina",
                         "south dakota","tennessee","texas", "utah","virginia",
                         "virgin islands", "vermont","washington","wisconsin",
                         "west virginia","wyoming"))
    )
    #create an nx1 data.frame of state codes from source column
    st.x<-data.frame(state=x)
    #match source codes with codes from 'st.codes' local variable and use to return the full state name
    refac.x<-st.codes$full[match(st.x$state,st.codes$state)]
    #return the full state names in the same order in which they appeared in the original source
    return(refac.x)
}
