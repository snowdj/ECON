PostBlog<-function(file_in,dir="/home/hanjo/HanjoStudy.github.io/",img="home-bg2.jpg", subtitle=""){
	library(knitr)
	library(yaml)

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
	add_head<-c("---","layout: post",paste("date: ",Sys.time(),sep=""),paste("header-img: \"img/",img,"\"",sep=""),
	"comments: true",paste("subtitle: \"",subtitle,"\"",sep=""))
	}else
	{
	add_head<-c("---","layout: post",paste("date: ",Sys.time(),sep=""),paste("header-img: \"img/",img,"\"",sep=""),
	"comments: true")
	}
	header<-c(add_head,header[-c(1,4)])
	skip_lines <- length(header)
	rmd_post <- readLines(infile)
	post <- c(header, rmd_post[-(1:6)])
	outfile<-paste0('_posts/',Sys.Date(),"-",gsub("_","-",infile))
	write(post,outfile)
	do.call(file.remove,list(infile))
}
