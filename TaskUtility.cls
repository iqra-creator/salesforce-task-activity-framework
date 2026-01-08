public class TaskUtility {

    public static List<Task> prepareTasks(List<Task> tasks) {
        for (Task t : tasks) {
            t.Status = 'Completed';
        }
        return tasks;
    }
}

public class TaskAsyncHandler {

    @future
    public static void saveTasks(List<Task> tasks) {
        insert tasks;
    }
}
