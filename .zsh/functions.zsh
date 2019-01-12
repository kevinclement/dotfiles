# animated gifs from any video
# from alex sexton   gist.github.com/SlexAxton/4989674
#brew install ffmpeg
#brew cask install caskroom/cask/xquartz
#open /usr/local/Caskroom/xquartz/2.7.11/XQuartz.pkg
# click through the stuff
#brew install gifsicle
#brew install imagemagick
gifify() {
  if [[ -n "$1" ]]; then
	if [[ $2 == '--good' ]]; then
	  ffmpeg -i "$1" -r 10 -vcodec png out-static-%05d.png
	  #time convert -verbose +dither -layers Optimize -resize 900x900\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > "$1.gif"
		time convert -verbose +dither -layers Optimize -resize 900x900\> out-static*.png  GIF:- | gifsicle --colors 128 --optimize=3 --multifile - > "$1.gif"
	  rm out-static*.png
	else
	  ffmpeg -i "$1" -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > "$1.gif"
	fi
  else
	echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}

enlist() { 
if [[ -n "$1" ]]; then
  git clone "outlookweb@vs-ssh.visualstudio.com:v3/outlookweb/Outlook%20Web/$1" $@[2,-1]
else
  echo "proper usage: enlist <git repo>."
fi
}

nginxwatch() {
	sudo fswatch -0 /usr/local/etc/nginx/nginx.conf | sudo xargs -0 -n 1 -I {} sudo nginx -s reload
}