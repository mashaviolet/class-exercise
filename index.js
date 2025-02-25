// qn 7
        function reverseString() {
            let str = document.getElementById("inputString").value;
            let reversedStr = str.split('').reverse().join('');
            document.getElementById("reversedResult").innerText = "Reversed: " + reversedStr;
        }
        // qn 8
        function checkEvenOdd() {
            let num = parseInt(document.getElementById("inputNumber").value);
            if (!isNaN(num)) {
                let result = (num % 2 === 0) ? "Even" : "Odd";
                document.getElementById("evenOddResult").innerText = "Result: " + result;
            } else {
                document.getElementById("evenOddResult").innerText = "Please enter a valid number.";
            }
        }
    



