public with sharing class TaskUtility {

    /*
     * Prepares Task records without performing DML.
     * This design supports bulk processing and testability.
     */
    public static List<Task> prepareTasksForCompletion(List<Task> inputTasks) {
        List<Task> preparedTasks = new List<Task>();

        for (Task t : inputTasks) {
            Task updatedTask = new Task(
                Id = t.Id,
                Status = 'Completed'
            );
            preparedTasks.add(updatedTask);
        }

        return preparedTasks;
    }
}

