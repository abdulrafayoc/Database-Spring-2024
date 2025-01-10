<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <body>
        <h1>sum & avg</h1>

        <% int num1=10; int num2=20; int sum=num1 + num2; %>

            <h1>sum: <%= sum %>
            </h1>

            <%! public int calculateAverage(int num1, int num2) { return (num1 + num2) / 2; } %>

                <h2>avg: <%= calculateAverage(num1, num2) %>
                </h2>
    </body>

    </html>