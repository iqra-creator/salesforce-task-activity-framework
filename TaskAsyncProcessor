public with sharing class TaskAsyncProcessor {

    /*
     * Performs DML operations asynchronously to avoid
     * governor limit issues during bulk updates.
     */
    @future
    public static void updateTasksAsync(List<Id> taskIds) {

        List<Task> tasksToUpdate = [
            SELECT Id, Status
            FROM Task
            WHERE Id IN :taskIds
        ];

        for (Task t : tasksToUpdate) {
            t.Status = 'Completed';
        }

        if (!tasksToUpdate.isEmpty()) {
            update tasksToUpdate;
        }
    }
}
