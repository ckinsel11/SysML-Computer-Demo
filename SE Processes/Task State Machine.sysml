package 'Agile Tasking States' {
    exhibit state 'Agile Tasking States' parallel {
        doc /* This is a state machine that defines the various states that a task can be in during an agile development process. */
        state 'Task States' {
            doc /* This is a state machine that describes the states within the workflow for an agile task*/
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
        state Resolution {
            doc /* This is a state machine that describes the resolution states for an agile task */
            state 'Resolved' {
                doc /* This is the state of a task that has been resolved. */
            }
            state 'Unresolved' {
                doc /* This is the state of a task that has not been resolved. */
            }
        }
    }
}