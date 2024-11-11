count_text_stats(){
    inputtext="$1"
    charcount=$(echo -n "$inputtext" | wc -c)
    wordcount=$(echo "$inputtext" | wc -w)
    spacecount=$(echo "$inputtext" | tr -cd ' ' | wc -c)
    punctcount=$(echo "$inputtext" | tr -cd '[:punct:]' | wc -c)
    echo "text analysis"
    echo "characters: $charcount"
    echo "words: $wordcount"
    echo "spaces: $spacecount"
    echo "punctuation: $punctcount"
}
text_to_analyze="This is an example text! It contains special symbols, such as @ and #."
count_text_stats "$text_to_analyze"
