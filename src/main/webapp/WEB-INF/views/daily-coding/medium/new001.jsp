<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<body>

<div class="container">
    <p>salary</p>
</div>

<script>
    const target = ['s','a','l','a','r','y'];
    let totalMoney = 0;
    function findStr(deposit){
        for(let i=0;i<deposit.length;i++){
            let d = deposit[i];
            let title = d.split(' ')[0];
            let money = d.split(' ')[1];
            money = parseInt(money);

            let words = title.split('');
            let wrong = 0;
            let idx = 0;
            let tIdx = 0;
            while(wrong<2 && idx<words.length && tIdx<target.length){
                if(words[idx]==target[tIdx]){
                    idx++;
                    tIdx++;
                }else{
                    wrong++;
                    tIdx++;
                    if(words[idx]==target[tIdx]){
                        idx++;
                        tIdx++;
                    }else{
                        wrong++;
                    }
                }
            }
            if (wrong < 2) {

                totalMoney += money;
            }
        }
        return totalMoney;
    }

    const list = [
        "salary 100",
        "alary 100",
        "adfdfdssalay 100",
        "dddsalabyddd 100",

    ];


</script>
</body>
</html>