<%@page import="java.util.Calendar"%>
<%@ page import="java.io.*" buffer="4096kb" autoFlush="true"%>
        <%!
            String fn;
            String filename;
        %>
        <%  
            try
            {
            String saveFile = "";
            String contentType = request.getContentType();
            if ((contentType != null) && (contentType.indexOf("multipart/form-data") >= 0)) {
                DataInputStream in = new DataInputStream(request.getInputStream());

                int formDataLength = request.getContentLength();

                byte dataBytes[] = new byte[formDataLength];

                int byteRead = 0;

                int totalBytesRead = 0;

                while (totalBytesRead < formDataLength) {

                    byteRead = in.read(dataBytes, totalBytesRead, formDataLength);
                    totalBytesRead += byteRead;
                }

                /*String sb=new String(dataBytes);
                 out.print(sb);*/
                String file = new String(dataBytes);
//                out.print(file);
                saveFile = file.substring(file.indexOf("filename=\"") + 10);
//out.print("after");
                saveFile = saveFile.substring(0, saveFile.indexOf("\n"));

                saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                int lastIndex = contentType.lastIndexOf("=");

                String boundary = contentType.substring(lastIndex + 1, contentType.length());

//                out.print("<br><br>" + boundary);

                int pos;

                pos = file.indexOf("filename=\"");
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;
                pos = file.indexOf("\n", pos) + 1;

                int boundaryLocation = file.indexOf(boundary, pos) - 4;
                int startPos = ((file.substring(0, pos)).getBytes()).length;
                int endPos = ((file.substring(0, boundaryLocation)).getBytes()).length;

                //saveFile = "\\upload\\" + saveFile;
                String year = (Calendar.getInstance().get(Calendar.YEAR))+"";
                String mnth = (Calendar.getInstance().get(Calendar.MONTH))+"";
                String day = (Calendar.getInstance().get(Calendar.DAY_OF_YEAR))+"";
                String hr = (Calendar.getInstance().get(Calendar.HOUR))+"";
                String min = (Calendar.getInstance().get(Calendar.MINUTE))+"";
                String sec = (Calendar.getInstance().get(Calendar.SECOND))+"";
                String currentdate=year+mnth+day+hr+min+sec;
                fn = currentdate+saveFile;
                filename=fn;
//                String rpath=request.getRequestURI();
//                rpath=rpath.substring(0, rpath.lastIndexOf("/"));
//                out.print(rpath);
//                String path = "F:\\deep\\Clientele\\Clientele\\web\\admin";
                String path=application.getRealPath("/");
                
                saveFile = path + "\\admin\\images\\" + fn;
//out.print(saveFile);
                File ff = new File(saveFile);
               
                FileOutputStream fileOut = new FileOutputStream(ff);
                fileOut.write(dataBytes, startPos, (endPos - startPos));
                fileOut.flush();
                fileOut.close();
            }
//            try {
                // if(session.getAttribute("url")!=null)
                //String path=session.getAttribute(url).toString();
                //   response.sendRedirect(session.getAttribute("url").toString());
            } catch (Exception e) {
out.print(e+"");
            }

           // response.sendRedirect(request.getHeader("referer"));
        %>
       <%=fn%>
