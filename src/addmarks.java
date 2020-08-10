import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Hashtable;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;

import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.openxml4j.opc.OPCPackage;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
public class addmarks extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

        MultipartFormDataRequest mrequest=null;
        String filetoUpload="";
        String filetype="";
        String pname="";
        String mfd="";
        String brand="";
        String discount="";
        String  cid="";
        String mrp="";
        UploadBean upBean=new UploadBean();
        if (MultipartFormDataRequest.isMultipartFormData(request)){
						mrequest = new MultipartFormDataRequest(request);
						Hashtable files = mrequest.getFiles();

                        filetype=mrequest.getParameter("imagefile");
                        filetoUpload=mrequest.getParameter("fname");

                        File ftu=new File(filetoUpload);    
                        String fileName=ftu.getName();
                        System.out.println(fileName+"******************************");
                        String appPath = getServletConfig().getServletContext().getRealPath("");
                		// constructs path of the directory to save uploaded file
                		String savePath = appPath + File.separator ;
                		String finalpath = savePath+ "sheets\\"+fileName;
                        upBean.setFolderstore(finalpath);
                       // System.out.println("**********9999999999999999"+finalpath);
                        upBean.store(mrequest,"imagefile");
                        //System.out.println("777777777777success");
                        String zzz = finalpath+"\\"+fileName;
                        System.out.println(zzz);
                        Class.forName("com.mysql.jdbc.Driver");  
			            Connection con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/firstbench","root","");  
			            con.setAutoCommit(false);  
			            PreparedStatement pstm = null ;  
			            FileInputStream input = new FileInputStream(zzz);  
			            OPCPackage pkg = OPCPackage.open(input); 
			            XSSFWorkbook wb = new XSSFWorkbook(pkg);  
			            XSSFSheet sheet = wb.getSheetAt(0);  
			            XSSFRow row;  
			            for(int i1=1; i1<=sheet.getLastRowNum(); i1++){  
			                row = sheet.getRow(i1); 
			                String htno = row.getCell(0).getStringCellValue();
			               // System.out.println(htno);
			                String branch = row.getCell(1).getStringCellValue();
			                //System.out.println(branch);
			                String year = row.getCell(2).getStringCellValue();
			                //System.out.println(year);
			                String subname = row.getCell(3).getStringCellValue();
			                //System.out.println(subname);
			                int internal = (int) row.getCell(4).getNumericCellValue();
			                //System.out.println(internal);
			                int external = (int) row.getCell(5).getNumericCellValue();
			                //System.out.println(external);
			                double total = (int) row.getCell(6).getNumericCellValue();
			               // System.out.println(total);
			                String acyear = row.getCell(7).getStringCellValue();
			                //System.out.println(acyear);
			                
			                pstm = con.prepareStatement("INSERT INTO addmarks VALUES(?,?,?,?,?,?,?)");
			                pstm.setString(1, htno);
			                pstm.setString(2, branch);
			                pstm.setString(3, year);
			                pstm.setString(4, subname);
			                pstm.setInt(5, internal);
			                pstm.setInt(6, external);
			                pstm.setDouble(7, total);
			              
			                pstm.executeUpdate();
			                		                	
			            }
			            //System.out.println("################");
			            response.sendRedirect("adminhome.jsp");
        }
        } catch(Exception e){
            e.printStackTrace();
            out.close();
        }
    } 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    } 
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        processRequest(request, response);
    }
}
