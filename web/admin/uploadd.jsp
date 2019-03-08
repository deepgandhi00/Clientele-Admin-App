
 <%@ page contentType="text/html; charset=utf-8" buffer="8192kb" autoFlush="true" language="java" import="java.sql.*" errorPage="" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page import="java.util.Calendar"%>
           <%@ page import="java.io.*"%>
        <%!
            String fn;
             byte dataBytes[];
             int startPos;
                int endPos;
                int formDataLength;
        %>
        <%
            String saveFile = "";
            String contentType = request.getContentType();
            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                DataInputStream in = new DataInputStream(request.getInputStream());

                formDataLength = request.getContentLength();

                dataBytes = new byte[formDataLength];

                int byteRead = 0;

                int totalBytesRead = 0;

                while (totalBytesRead < formDataLength) {

                    byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                    totalBytesRead += byteRead;
                }

                /*String sb=new String(dataBytes);
                 out.print(sb);*/
                String filee = new String(dataBytes);
               // out.print(filee);
                saveFile = filee.substring(filee.indexOf("filename=\"") + 10);

                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));

                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                int lastIndex = contentType.lastIndexOf("=");

                String boundary = contentType.substring(lastIndex + 1, contentType.length());

//                out.print("<br><br>" +boundary);

                int pos;

                pos = filee.indexOf("filename=\"");
                pos = filee.indexOf("\n", pos) + 1;
                pos = filee.indexOf("\n", pos) + 1;
                pos = filee.indexOf("\n", pos) + 1;

                int boundaryLocation = filee.indexOf(boundary, pos) - 4;
                startPos = ((filee.substring(0, pos)).getBytes()).length;
                endPos = ((filee.substring(0, boundaryLocation)).getBytes()).length;

                //saveFile = "\\upload\\" + saveFile;
                fn = saveFile;
                
  }
            try {
                String year = (Calendar.getInstance().get(Calendar.YEAR))+"";
                String mnth = (Calendar.getInstance().get(Calendar.MONTH))+"";
                String day = (Calendar.getInstance().get(Calendar.DAY_OF_YEAR))+"";
                String hr = (Calendar.getInstance().get(Calendar.HOUR))+"";
                String min = (Calendar.getInstance().get(Calendar.MINUTE))+"";
                String sec = (Calendar.getInstance().get(Calendar.SECOND))+"";
                String currentdate=year+mnth+day+hr+min+sec;
                
                
                String path = "F:\\clientele_merge\\build\\web\\admin";
                saveFile = path + "\\images\\"+currentdate+"new_retailer.jpg";

                File ff = new File(saveFile);
                FileOutputStream fileOut = new FileOutputStream(ff);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();
                
                out.print((currentdate+"new_retailer.jpg").trim());
//         
                // if(session.getAttribute("url")!=null)
                //String path=session.getAttribute(url).toString();
                //   response.sendRedirect(session.getAttribute("url").toString());
            } catch (Exception e) {
                out.print(e);

            }
//            response.sendRedirect("localhost:8080/testupload.jsp?file="+saveFile);
//            response.sendRedirect(request.getHeader("referer")+"?file="+saveFile);
//out.print(request.getHeader("referer")+"?file="+fn);
            %>