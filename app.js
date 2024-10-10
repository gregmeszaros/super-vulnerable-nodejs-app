const express = require('express');
const app = express();

// Add middleware to parse JSON request body
app.use(express.json());

// Event listener for process exit
process.on('exit', (code) => {
    console.log(`Process exiting with code: ${code}`);
});

app.post('/deserialize', (req, res) => {
    const userInput = req.body.data;  // Unsafe deserialization
    try {
        // Dangerous: eval() executes the code directly
        const result = eval(userInput);  // This can lead to remote code execution!
        res.send(`Success: ${result}`);
    } catch (error) {
        res.status(500).send('Error during deserialization');
    }
});

app.listen(3000, () => {
    console.log('Server running on port 3000');
});