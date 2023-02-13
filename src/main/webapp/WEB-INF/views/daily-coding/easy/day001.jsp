<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<body>

<div class="container">
    <p>
        Good morning! Here's your coding interview problem for today.

        This problem was asked by Amazon.

        Run-length encoding is a fast and simple method of encoding strings. The basic idea is to represent repeated successive characters as a single count and character. For example, the string "AAAABBBCCDAA" would be encoded as "4A3B2C1D2A".

        Implement run-length encoding and decoding. You can assume the string to be encoded have no digits and consists solely of alphabetic characters. You can assume the string to be decoded is valid.
    </p>
    <p>AAAABBBCCDAA => 4A3B2C1D2A</p>
</div>
<input type="text" id="givenWords" oninput="this.value.replace(/[^A-Za-z]/ig, '')" maxlength="20"/>
<button onclick="run();">RUN</button>
<div class="answer-zone">

    <p style="color: darkgreen" id="answerWords"></p>
</div>
</body>
</html>

<script>
    const run = () => {
        let words = document.getElementById('givenWords').value || '';
        if(words===''){
            alert('insert Only Capital Alphabet');
            return;
        }
        words = words.toString().toUpperCase();

        let wordsList = words.split('');
        let formatList = [];
        //{ alphabet:'A', cnt:4}
        for (let i = 0; i < wordsList.length; i++) {
            let w = wordsList[i];
            let alpha = new Map();
            if (i === 0) {
                formatList.push(initMap(alpha, w));
            }else{
                let tmp = formatList[i - 1] || formatList[formatList.length - 1];

                let prevAlpha = tmp.get('alphabet');
                let cnt = tmp.get('cnt');

                if (prevAlpha == w) {
                    tmp.set('cnt', cnt + 1);
                }else{
                    formatList.push(initMap(alpha, w));
                }
            }
        }
        let returnStr = '';
        formatList.forEach(tmp => {
            returnStr += tmp.get('cnt') + tmp.get('alphabet');
        })
        document.getElementById('answerWords').innerText = returnStr;
    }

    function initMap(map, alphabet) {
        map.set('alphabet', alphabet);
        map.set('cnt',1);
        return map;

    }
</script>
