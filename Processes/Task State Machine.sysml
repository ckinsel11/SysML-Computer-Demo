package 'Agile Tasking States' {
    state 'Backlog' {
        doc /* This is the state of a task that has been identified as something that needs to be done, but has not yet been prioritized for work. */
    }
    state 'To Do' {
        doc /* This is the state of a task that has not been started yet, but is prioritized for work. */
    }
    state 'In Progress' {
        doc /* This is the state of a task that is currently being worked on. */
    }
    state 'Done' {
        doc /* This is the state of a task that has been completed. */
    }
    state 'Overcome by Events' {
        doc /*This is the state of a task that has been identified as something that is no longer relevant or necessary. */
    }

}