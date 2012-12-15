create table dict (id int4, word text);
create index dictix on dict(word);
copy dict from '/u/cs448/public/words.txt' with delimiter as ' ';

