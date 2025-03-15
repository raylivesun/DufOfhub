<!DOCTYPE html>
<html>
    <body>
        <h1>Math Problem Solver</h1>
        <p>Solve the equation 6 + (2 / (x^3)) = 0.</p>
        <input type="text" id="x" placeholder="Enter value of x" />
        <button onclick="solveMathProblem()">Solve</button>
        <p id="result"></p>
        <p id="hint">Note: The equation is satisfied when the value of the result equals zero.</p>
        <p id="additional-info">Make sure to enter a numeric value for x.</p>
        <script type="text/javascript">
            function solveMathProblem() {
                var x = document.getElementById("x").value;
                var result = 6 + (2 / (Math.pow(x, 3)));
                document.getElementById("result").innerHTML = "The result is: " + result;
            }
        </script>
    </body>
</html>
