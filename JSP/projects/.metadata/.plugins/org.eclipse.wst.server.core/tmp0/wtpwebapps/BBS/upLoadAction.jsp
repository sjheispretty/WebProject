<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="file.FileDAO"%>
<%@ page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP File Upload</title>
</head>
<body>
	<%
		String directory = application.getRealPath("/Users/gimseongjae/Desktop/JSP/projects/BBS/upload");
		String path = "/Users/gimseongjae/Desktop/JSP/projects/BBS/upload";

		int maxSize = 1024 * 1024 * 1000;
		String encoding = "UTF-8";

		File isDir = new File(directory);
		if (!isDir.isDirectory()) {
			System.out.println("디렉토리가 없습니다.");
			isDir.mkdir();
		}

		MultipartRequest multipartRequest = new MultipartRequest(request, path, maxSize, "UTF-8",
				new DefaultFileRenamePolicy());

		String fileName = multipartRequest.getOriginalFileName("file");
		String fileRealName = multipartRequest.getFilesystemName("file");

		new FileDAO().upload(fileName, fileRealName);
		out.write("파일명 : " + fileName + "<br>");
		out.write("실제 파일명 : " + fileName + "<br>");
	%>




	</form>
</body>
</html>