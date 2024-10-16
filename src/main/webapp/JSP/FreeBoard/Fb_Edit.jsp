<%@page import="DTO.FreeBoardDTO"%>
<%@page import="DAO.FreeBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/JSP/FreeBoard/IsLoggedIn.jsp"%> 
<%
String num = request.getParameter("num");  // 일련번호 받기 
FreeBoardDAO dao = new FreeBoardDAO();  // DAO 생성
FreeBoardDTO dto = dao.selectView(num);        // 게시물 가져오기 
String sessionId = session.getAttribute("UserId").toString(); // 로그인 ID 얻기 
/* if (!sessionId.equals(dto.getId())) {      // 본인인지 확인
    JSFunction.alertBack("작성자 본인만 수정할 수 있습니다.", out);
    return;
} */
dao.close();  // DB 연결 해제
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
<script type="text/javascript">
function validateForm(form) {  // 폼 내용 검증 
    if (form.title.value == "") {
        alert("제목을 입력하세요.");
        form.title.focus();
        return false;
    }
    if (form.content.value == "") {
        alert("내용을 입력하세요.");
        form.content.focus();
        return false;
    }
}
</script>
</head>
<body>
<jsp:include page= '/JSP/Common/Header.jsp' />
<h2>Edit</h2>
<form name="writeFrm" method="post" action="EditProcess.free"
      onsubmit="return validateForm(this);">
    <input type="hidden" name="num" value="<%= dto.getNum() %>" /> 
    <table border="1" width="90%">
        <tr>
            <td align="center">제목</td>
            <td colspan="2">
                <input type="text" name="title" style="width: 90%;" 
                       value="<%= dto.getTitle() %>"/> 
            </td>
        </tr>
        <tr>
            <td align="center">내용</td>
            <td colspan="2">
                <textarea name="content" style="width: 90%; height: 100px;"><%= dto.getContent() %></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <button type="submit">작성 완료</button>
                <button type="button" onclick="location.href='List.jsp';">
                    목록 보기</button>
            </td>
        </tr>
    </table>
</form>
<jsp:include page= '/JSP/Common/Footer.jsp' />
</body>
</html>