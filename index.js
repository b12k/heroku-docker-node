const express = require('express');

const PORT = process.env.PORT || 8080;

express()
    .get('/', (_, res) => res.json(process.env))
    .listen(PORT || 8080, () => console.log(`http://localhost:${PORT}`));