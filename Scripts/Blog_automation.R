PostBlog<-function(file_in, dir=getwd(), img="home-bg2.jpg", subtitle="", category, tags){
  
  if(!dir.exists("/_rmd")) return("Not in correct folder. Please use Blog.Rproj when working on blog")
  
  library(knitr)
  library(yaml)
  
  if(missing(category)|missing(tags))
  {
    cat("Please provide a category and tag for your post before it can be processed\n")
    cat("Category: ", !missing(category), "\n")
    cat("Tags: ", !missing(tags), "\n")
    return(cat("----------------------------------------------"))
  }
  
  if(!missing(category)){
    categories <- c("Literature Review", "Package Exploration", "Technique Review")
    if(length(category)>1|!(category %in% categories)){
      cat("You have entered more than 1 category OR entered wrong category. Please 1 select from following list\n")
      cat("1 Literature Review\n")
      cat("2 Package Exploration\n")
      cat("3 Technique Review\n")
      x <- as.numeric(readline())
      if(!(x %in% c(1,2,3))){
        return("Wrong input retard. I will now quit and make you do this again")
      }else{
        category <- categories[x]
      }
    }
  }
  
  KnitPost <- function(input, base.url = "/") {
    require(knitr)
    opts_knit$set(base.url = base.url)
    fig.path <- paste0("figures/", sub(".Rmd$", "", basename(input)), "/")
    opts_chunk$set(fig.path = fig.path)
    opts_chunk$set(fig.cap = "center")
    render_jekyll()
    knit(input, envir = parent.frame())
  }
  
  parse_yaml_header <- function(infile = '') {
    num_line <- 0
    yaml <- c()
    repeat {
      scanned <- scan(infile, what = "", sep = "\n",
                      nlines = 1, skip = num_line, quiet = TRUE,
                      blank.lines.skip = FALSE)
      if (scanned == '') break
      yaml <- c(yaml, scanned)
      num_line = num_line + 1
    }
    # removing hashes '#'
    sub('#', '', yaml)
  }
  
  setwd(dir)
  KnitPost(paste("_rmd/",file_in,sep=""))
  infile<-gsub("_rmd/","",file_in)
  infile<-gsub("Rmd","md",infile)
  print(infile)
  header <- parse_yaml_header(infile)
  if(subtitle!="")
  {
    add_head<-c("---","layout: post",
                paste0("date: ",Sys.time()),
                paste0("header-img: \"img/",img,"\""),
                "comments: true",
                paste0("subtitle: \"",subtitle,"\""),
                paste0("category: ",category),
                paste0("tags: [",paste0(tags, collapse = ", "),"]"))
  }else
  {
    add_head<-c("---","layout: post",
                paste0("date: ",Sys.time()),
                paste0("header-img: \"img/",img,"\""),
                "comments: true",
                paste0("category: ",category),
                paste0("tags: [",paste0(tags, collapse = ", "),"]"))
  }
  header<-c(add_head,header[-c(1,4)])
  skip_lines <- length(header)
  rmd_post <- readLines(infile)
  post <- c(header, rmd_post[-(1:6)])
  outfile<-paste0('_posts/',Sys.Date(),"-",gsub("_","-",infile))
  write(post,outfile)
  do.call(file.remove,list(infile))
}
