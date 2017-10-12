package lab01;

import lab01.SubjectAreas.Car;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addCar")
public class MainServlet extends HttpServlet {
    private ArrayList<Car> cars = new ArrayList();

    @Override
    public void doGet(HttpServletRequest request,
                      HttpServletResponse response )
            throws ServletException, IOException {
        request.setAttribute("cars", cars);
        getServletConfig().getServletContext().getRequestDispatcher("/cars.jsp").forward(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request,
                       HttpServletResponse response )
            throws ServletException, IOException
    {
        Car car = new Car();
        car.model = request.getParameter("model" );
        car.bodyType = request.getParameter("body-type" );
        car.color = request.getParameter("color" );
        car.enginePower = Integer.parseInt( request.getParameter("engine-power" ) );
        car.yearOfIssue = Integer.parseInt( request.getParameter("year-issue" ) );
        cars.add( car );

        response.sendRedirect("/index.jsp" );
    }
}