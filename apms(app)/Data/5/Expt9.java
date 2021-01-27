import java.io.*;
import java.util.*;

class Student implements Serializable
{
	String name,city;
	int age;
	double height,weight,phone_no;
}

class Expt9
{
	public static void main(String args[]) throws IOException
	{
		int stud;
		Scanner sc=new Scanner(System.in);
		System.out.println("enter the no of student");
		stud=sc.nextInt();
		Student s=new Student();
		FileOutputStream fos=new FileOutputStream("Sample.txt");
		ObjectOutputStream oos=new ObjectOutputStream(fos);
		DataInputStream dis=new DataInputStream(System.in);
		for(int i=1;i<=stud;i++)
		{
			System.out.println("enter the student name");
			s.name=dis.readLine();
			System.out.println("enter the student city name");
			s.city=dis.readLine();
			System.out.println("enter the student age");
			s.age=Integer.parseInt(dis.readLine());
			System.out.println("enter the student phone number");
			s.phone_no=Double.parseDouble(dis.readLine());
			System.out.println("enter the student height");
			s.height=Double.parseDouble(dis.readLine());
			System.out.println("enter the student weight");
			s.weight=Double.parseDouble(dis.readLine());
			oos.writeObject(s);
		}

		
		

		oos.close();
		fos.close();
		try
		{
			FileInputStream fis=new FileInputStream("Sample.txt");
			ObjectInputStream ois=new ObjectInputStream(fis);
			s=(Student)ois.readObject();
		
			DataOutputStream dos=new DataOutputStream(System.out);
			for(int i=1;i<=stud;i++)
			{
				dos.writeBytes("student name"+s.name);
				System.out.println("\n");
				dos.writeBytes("student city name"+s.city);
				System.out.println("\n");
				dos.writeBytes("student age"+s.age);
				System.out.println("\n");
				dos.writeBytes("student phone number"+s.phone_no);
				System.out.println("\n");
				dos.writeBytes("student height"+s.height);
				System.out.println("\n");
				dos.writeBytes("student weight"+s.weight);
			}
			dos.close();
			fis.close();
	
		}
		catch(ClassNotFoundException cne)
		{
			System.out.println(cne);
		}

		
	}
}
			

