export EDITOR="vim"
export BUNDLER_EDITOR="subl"


alias rld="source ~/.zshrc"
alias zshconfig="st ~/.zshrc"
alias tunnel="ssh -R 3000:localhost:3000 madyankin.name && pbcopy 'http://madyankin.name:3000'"
alias graph_models="railroady -M | dot -Tpng > models.png"


function convert_for_ipad()  {
  ffmpeg -i "$1" \
  -acodec aac -ac 2 -strict experimental -ab 160k -vcodec libx264 -preset slow -profile:v baseline \
  -level 30 -maxrate 10000000 -bufsize 10000000 -b 1200k -f mp4 -threads 0 \
  "$1.mp4"
}

function convert_for_html5() {
    filename=$(basename "$1")
    filename=${filename%.*}
    directory=$(dirname "$1")

    # ffmpeg -i "$1" -acodec libvorbis -ac 2 -ab 96k -ar 44100 -b 345k "$directory/$filename.ogv"
    # ffmpeg -i "$1" -acodec libvorbis -ac 2 -ab 96k -ar 44100 -b 345k "$directory/$filename.webm"

    ffmpeg -i "$1" -acodec libfaac -ab 96k -vcodec libx264 -level 21 -refs 2 -b 345k -bt 345k -threads 0 "$directory/$filename.mp4"
    ffmpeg2theora -o "$directory/$filename.ogv" "$1"
}
