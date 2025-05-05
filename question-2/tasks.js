const express = require('express');
const router = express.Router();
const db = require('../db/db');

// CREATE
router.post('/', (req, res) => {
  const { user_id, title, description } = req.body;
  db.query('INSERT INTO tasks (user_id, title, description) VALUES (?, ?, ?)', [user_id, title, description], (err, result) => {
    if (err) throw err;
    res.status(201).send({ id: result.insertId, title, description });
  });
});

// READ ALL
router.get('/', (req, res) => {
  db.query('SELECT * FROM tasks', (err, results) => {
    if (err) throw err;
    res.json(results);
  });
});

// UPDATE
router.put('/:id', (req, res) => {
  const { title, description, completed } = req.body;
  db.query('UPDATE tasks SET title=?, description=?, completed=? WHERE id=?', [title, description, completed, req.params.id], (err) => {
    if (err) throw err;
    res.send('Task updated.');
  });
});

// DELETE
router.delete('/:id', (req, res) => {
  db.query('DELETE FROM tasks WHERE id=?', [req.params.id], (err) => {
    if (err) throw err;
    res.send('Task deleted.');
  });
});

module.exports = router;