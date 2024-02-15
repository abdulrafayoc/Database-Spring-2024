// See https://aka.ms/new-console-template for more information

class Program
{
    static void Main(string[] args)
    {
        List<Student> students = new List<Student>();

        students.Add(new Student(1, "Nawaz", 20, 'A'));
        students.Add(new Student(2, "Imran", 21, 'A'));
        students.Add(new Student(3, "Bilawal", 19, 'B'));
        students.Add(new Student(4, "Biden", 17, 'C'));
        students.Add(new Student(5, "Biden", 19, 'D'));
        students.Add(new Student(6, "Rafay", 29, 'A'));
        students.Add(new Student(7, "Maryan", 99, 'B'));
        
        Console.WriteLine("Task 1: ");
        print(students);
        
        Console.WriteLine("Task 2: ");
        Console.WriteLine((students, 2));
        
        
        Console.WriteLine("Task 3: ");
        
        List<string> names = uniqueNames(students);
        foreach (var name in names)
        {
            Console.WriteLine(name);
        }
        
        Console.WriteLine("Task 4: ");
        Console.WriteLine(averageAge(students));
        
        Console.WriteLine("Task 5: ");
        print(sortStudentsByName(students));
        
        Console.WriteLine("Task 6: ");
        Console.WriteLine(findOldestStudent(students));
        
        Console.WriteLine("Task 7: ");
        Dictionary<char, int> counts = countStudentsByGrade(students);
        foreach (var count in counts)
        {
            Console.WriteLine($"{count.Key}: {count.Value}");
        }
        
        Console.WriteLine("Task 8: ");
        updateStudentAge(students, 2, 22);
        print(students);
        
        Console.WriteLine("Task 9: ");
        removeStudent(students, 3);
        print(students);
        
        Console.WriteLine("Task 10: smae as ");
        
    }
    
    static void print(List<Student> students)
    {
        foreach (var student in students)
        {
            Console.WriteLine(student);
        }
    }

    static Student search(List<Student> students, int id)
    {
        foreach (var student in students)
        {
            if (student.getID() == id)
            {
                return student;
            }
        }

        Console.WriteLine("Student not found");
        return null;
    }

    static List<string> uniqueNames(List<Student> students)
    {
        List<string> names = new List<string>();
        
        foreach (var student in students)
        {
            if (!names.Contains(student.getName()))
            {
                names.Add(student.getName());
            }
        }
        
        return names;
    }
    
    
    static double averageAge(List<Student> students)
    {
        double sum = 0;
        
        foreach (var student in students)
        {
            sum += student.getAge();
        }
        
        return sum / students.Count;
    }
    
    static List<Student> sortStudentsByName(List<Student> students)
    {
        students.Sort((x, y) => x.getName().CompareTo(y.getName()));
        return students;
    }
    
    static Student findOldestStudent(List<Student> students)
    {
        Student oldest = students[0];
        
        foreach (var student in students)
        {
            if (student.getAge() > oldest.getAge())
            {
                oldest = student;
            }
        }
        
        return oldest;
    }
    
    static Dictionary<char, int> countStudentsByGrade(List<Student> students)
    {
        Dictionary<char, int> counts = new Dictionary<char, int>();
        
        foreach (var student in students)
        {
            if (counts.ContainsKey(student.getGrade()))
            {
                counts[student.getGrade()]++;
            }
            else
            {
                counts[student.getGrade()] = 1;
            }
        }
        
        return counts;
    }
    
    static void updateStudentAge(List<Student> students, int id, int age)
    {
        foreach (var student in students)
        {
            if (student.getID() == id)
            {
                student.setAge(age);
                return;
            }
        }
    }
    
    static void removeStudent(List<Student> students, int id)
    {
        for (int i = 0; i < students.Count; i++)
        {
            if (students[i].getID() == id)
            {
                students.RemoveAt(i);
                return;
            }
        }
    }
    
    

}
class Student
{
    int ID;
    string Name;
    int Age;
    char Grade;

    public void setID(int id)
    {
        ID = id;
    }
    
    public int getID()
    {
        return ID;
    }
    
    public void setName(string name)
    {
        Name = name;
    }
    
    public string getName()
    {
        return Name;
    }
    
    public void setAge(int age)
    {
        Age = age;
    }
    
    public int getAge()
    {
        return Age;
    }
    
    public void setGrade(char grade)
    {
        Grade = grade;
    }
    
    public char getGrade()
    {
        return Grade;
    }
    
    
    public Student(int id, string name, int age, char grade)
    {
        ID = id;
        Name = name;
        Age = age;
        Grade = grade;
    }
    

    public override string ToString()
    {
        return $"ID: {ID}, Name: {Name}, Age: {Age}, Grade: {Grade}";
    }
}