
    def a (prime) 

        if(prime > 59) 
             lastdigit = (prime%60)
             seconddigit = (((prime-lastdigit)/60))%60
             thirddigit = (((prime-seconddigit)/3600))%60
             fourthdigit = (((prime-thirddigit)/216000))%60
             fifthdigit = (((prime-fourthdigit)/12960000))%60



            if (prime < 3600)
                 ((a(seconddigit) + a(lastdigit)))

            elsif (prime < 216000){

                 ((a(thirddigit) + a(seconddigit) + a(lastdigit)))

            elsif (prime < 12960000){

                 ((a(fourthdigit) + a(thirddigit) + a(seconddigit) + a(lastdigit)))

            elsif (prime > 12959999){

                 ((a(fifthdigit) + a(fourthdigit) + a(thirddigit) + a(seconddigit) + a(lastdigit)))

            end
        else

            switch (prime){

                 when 0
                     "0"
                 when 1
                     "1"
                 when 2
                     "☻"
                 when 3
                     "♥"
                 when 4
                     "♦"
                 when 5
                     "♣"
                 when 6
                     "♠"
                 when 7
                     "•"
                 when 8
                     "◘"
                 when 9
                     "○"
                 when 10
                     "◙"
                 when 11
                     "♂"
                 when 12
                     "♀"
                 when 13
                     "♪"
                 when 14
                     "♫"
                 when 15
                     "☼"
                 when 16
                     "►"
                 when 17
                     "◄"
                 when 18
                     "↕"
                 when 19
                     "‼"
                 when 20
                     "¶"
                 when 21
                     "§"
                 when 22
                     "▬"
                 when 23
                     "↨"
                 when 24
                     "↑"
                 when 25
                     "↓"
                 when 26
                     "→"
                 when 27
                     "←"
                 when 28
                     "∟"
                 when 29
                     "↔"
                 when 30
                     "▲"
                 when 31
                     "▼"
                 when 32
                     "ä"
                 when 33
                     "à"
                 when 34
                     "å"
                 when 35
                     "ç"
                 when 36
                     "ê"
                 when 37
                     "ë"
                 when 38
                     "è"
                 when 39
                     "ï"
                 when 40
                     "î"
                 when 41
                     "ì"
                 when 42
                     "Ä"
                 when 43
                     "Å"
                 when 44
                     "É"
                 when 45
                     "æ"
                 when 46
                     "Æ"
                 when 47
                     "ô"
                 when 48
                     "ö"
                 when 49
                     "ò"
                 when 50
                     "û"
                 when 51
                     "ù"
                 when 52
                     "ÿ"
                 when 53
                     "Ö"
                 when 54
                     "Ü"
                 when 55
                     "¢"
                 when 56
                     "£"
                 when 57
                     "¥"
                 when 58
                     "₧"
                 when 59
                     "ƒ"
                end
            end

         "○"
        end

        a(aRGV[0].to_i)