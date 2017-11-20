
translation <- list(
    "lWelcomePage" = list("en" = "Welcome Page",
                          "cn" = "111",
                          "jp" = "111"),
    "lGlobalSetting" = list("en" = "Global Setting",
                            "cn" = "全局设定",
                            "jp" = "全般設定"),
    "lSelectYourLanguage" = list("en" = "Select your language",
                                  "cn" = "请选择您的使用语言",
                                  "jp" = "表示言語を選びください")
)
# then:
#translation[['lGlobalSetting']][['en']] 
#translation[['lGlobalSetting']][['jp']] 

# translates text into current language
tr <- function(text){
    sapply(text,function(s) translation[[s]][[input$language]], USE.NAMES=FALSE)
}