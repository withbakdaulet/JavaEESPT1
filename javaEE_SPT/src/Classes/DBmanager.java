package Classes;

import java.util.ArrayList;

public class DBmanager {

    static ArrayList<Tasks> tasks = new ArrayList<>();
    private static  Long id = 4L;
    static {
      tasks.add(new Tasks(1L,"Bako","no","2024-12-15",true));
      tasks.add(new Tasks(2L,"Tako","no","2024-11-15",true));
      tasks.add(new Tasks(3L,"Sako","no","2024-10-15",true));
    }
   public static void addTask(Tasks task){
        task.setId(id);
        task.setStatus(false);
        id++;

       tasks.add(task);
    }

    public static Tasks getTask(Long id){
        Tasks tasksGet = new Tasks();
        for (int i = 0; i < tasks.size(); i++) {
            if(id==tasks.get(i).getId()){
                tasksGet = tasks.get(i);
            }
        }
        return tasksGet;
    }
    public static ArrayList getAllTasks(){
        return tasks;
    }

    public static void deleteTask(Long id){
        for(Tasks taskDelete: tasks){
            if(id==taskDelete.getId()){
                System.out.println(tasks.remove(taskDelete));
            }
        }
    }
}
