process.stdin.resume();
process.stdin.setEncoding("ascii");

var input = "";

process.stdin.on("data", function (chunk) {
    input += chunk;
});

process.stdin.on("end", function () {
    processData(input);
});

function processData(input) {
    var lines = input.split(/\n/);
    var N = parseInt(lines[0]);
    var i = 1;
    var output = '';

    while (i <= N) {
        output += lines[i] + '\n';
        i++;
    }

    process.stdout.write(output);
}