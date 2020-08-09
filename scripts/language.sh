MODEL_ZERO_LINK="https://kumisystems.dl.sourceforge.net/project/cmusphinx/Acoustic%20and%20Language%20Models/Russian/zero_ru_cont_8k_v3.tar.gz"
wget -O ru-RU-ZERO.tar.gz $MODEL_ZERO_LINK

MODEL_STD_LINK="https://kumisystems.dl.sourceforge.net/project/cmusphinx/Acoustic and Language Models/Russian/cmusphinx-ru-5.2.tar.gz"
wget -O ru-RU-STD.tar.gz $MODEL_STD_LINK

SR_LIB=$(python3 -c "import speech_recognition as sr, os.path as p; print(p.dirname(sr.__file__))")

printf "Extract \e[32mru-RU-ZERO.tar.gz\e[0m to \e[32m${SR_LIB}/ru-RU-ZERO\e[0m\n"
sudo tar -zxf ru-RU-ZERO.tar.gz --directory $SR_LIB
sudo chmod --recursive a+r "$SR_LIB/ru-RU-ZERO/"

printf "Extract \e[32mru-RU-STD.tar.gz\e[0m to \e[32m${SR_LIB}/ru-RU-STD\e[0m\n"
sudo tar -zxf ru-RU-STD.tar.gz --directory $SR_LIB
sudo chmod --recursive a+r "$SR_LIB/ru-RU-STD/"
