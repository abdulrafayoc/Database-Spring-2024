package bookservlet;

import java.io.*;
import java.util.*;

import javax.servlet.*;

public class BookServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public static class Book {
        private String title;
        private String author;
        private String genre;
        private double price;

        public Book(String title, String author, String genre, double price) {
            this.title = title;
            this.author = author;
            this.genre = genre;
            this.price = price;
        }

        public String getTitle() {
            return title;
        }
        
        public String getAuthor() {
            return author;
        }
        
        public String getGenre() {
            return genre;
        }
        
        public double getPrice() {
            return price;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        List<Book> books = new ArrayList<>();
        books.add(new Book("Atomic Habits", "James Clear", "Self-help", 20.00));
        books.add(new Book("The Alchemist", "Paulo Coelho", "Fiction", 15.00));
        books.add(new Book("The Lean Startup", "Eric Ries", "Business", 25.00));
        books.add(new Book("The Da Vinci Code", "Dan Brown", "Thriller", 18.00));
        books.add(new Book("The Great Gatsby", "F. Scott Fitzgerald", "Classic", 12.00));
           

        out.println("<html><head><title>Book List</title></head><body>");
        out.println("<h1>List of Books</h1>");
        out.println("<table border=\"1\"><tr><th>Title</th><th>Author</th><th>Genre</th><th>Price</th></tr>");
        
        for (Book book : books) {
            out.println("<tr><td>" + book.getTitle() + "</td><td>" + book.getAuthor() + "</td><td>" + book.getGenre() + "</td><td>" + book.getPrice() + "</td></tr>");
        }

        out.println("</table></body></html>");
    }
}