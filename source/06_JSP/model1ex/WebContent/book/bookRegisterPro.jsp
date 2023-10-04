<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="com.lec.dao.BookDao"%>
<%@page import="com.lec.dto.BookDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String conPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		String path = request.getRealPath("bookImg");
		int maxSize = 1024*1024*5; // 최대업로드 사이즈를 5M
		String[] image = {"",""};
		MultipartRequest mRequest = null;
		try{
			// 파일 서버에 올리고 파일 이름 받기(multipartRequest 객체 이용)
			mRequest = new MultipartRequest(request, path, maxSize, "utf-8",
																				new DefaultFileRenamePolicy());
			Enumeration<String> paramNames = mRequest.getFileNames(); // 파라미터이름들
			int idx = 0;
			while(paramNames.hasMoreElements()){
				String param = paramNames.nextElement();
				image[idx] = mRequest.getFilesystemName(param);
				//out.println(idx+"번째 처리한 파라미터이름 :"+param+"/파일이름:"+image[idx]+"<br>");
				idx++;
			}
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
		// 서버에 올려진 파일을 소스폴더에 복사
		for(String imgfile : image){
			if(imgfile!=null){ // 첨부 했을 경우만 복사
				InputStream  is = null;
				OutputStream os = null;
				File serverFile = new File(path+"/"+imgfile);
				if(serverFile.exists()){ // 확실하게 한 번더 파일이 있는지 물음
					try{
						is = new FileInputStream(serverFile);
						os = new FileOutputStream("D:/webPro/source/06_JSP/model1ex/WebContent/bookImg/"+imgfile);
						byte[] bs = new byte[(int)serverFile.length()];
						while(true){
							int readbyteCnt = is.read(bs);
							if(readbyteCnt==-1) break;
							os.write(bs, 0, readbyteCnt);
						}
					}catch(Exception e){
						System.out.println(e.getMessage());
					}finally{
						if(os!=null) os.close();
						if(is!=null) is.close();
					}
				}//if
			}//if
		}//for
		// 책제목, 책설명, 가격, 할인율 등의 파라미터 값 받아 BookDto 객체 만단다
		String btitle = mRequest.getParameter("btitle");
		int bprice    = Integer.parseInt(mRequest.getParameter("bprice"));
		String bimage1= image[1]!=null? image[1]:"NOTHING.JPG";
		String bimage2= image[0]==null? "noImg.png": image[0];
		String bcontent= mRequest.getParameter("bcontent");
		int bdiscount = Integer.parseInt(mRequest.getParameter("bdiscount"));
		//String ip = request.getRemoteAddr(); ip가 필요한 경우
		BookDto book = new BookDto(0, btitle, bprice, bimage1, bimage2, 
																												bcontent, bdiscount, null);
		// DB에 insertBook
		BookDao bDao = BookDao.getInstance();
		int result = bDao.insertBook(book);
		if(result == BookDao.SUCCESS){%>
			<script>
				alert('책 등록 성공');
				location.href = '<%=conPath%>/book/bookList.jsp';
			</script>
	<%	}else{ %>
			<script>
				alert('책 등록 실패');
				history.back();
			</script>
	<%	}%>
</body>
</html>