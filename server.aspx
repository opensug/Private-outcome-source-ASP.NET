<%@ Page Language="C#" AutoEventWireup="true" %>
<%
/**
 * openSug.js Private outcome source(ASP.NET) - v1.0.0
 * kw Query String
 * cb CallBack function
 * Robin lee <openSug@gmail.com>
 * 2020-12-18 Fri 14:22
*/

Response.Expires = -1;
string Query = Request.QueryString["kw"];
string CallBack = Request.QueryString["cb"];

if(string.IsNullOrEmpty(Query) || string.IsNullOrEmpty(CallBack) || !Regex.IsMatch(CallBack, @"^BaiduSuggestion.res.__\d+$")){
	Response.StatusCode = 404;
    Response.Status = "404 Not Found";
	Response.End();
}

Response.ContentType = "text/javascript; charset=utf-8";


// TO DO (e.g:): 
string result = "\"Candidate words 1 \",\"Candidate words 2\",\"Candidate words 3\",\"Candidate words 4\",\"Candidate words 5\",\"Candidate words 6\",\"Candidate words 7\",\"Candidate words 8\",\"Candidate words 9\",\"Candidate words 10\",";







if(result.Length > 0){
	result = result.Substring(0, result.Length - 1);
}

Response.Write(CallBack +"({s:["+ result +"]});");
Response.End();
%>