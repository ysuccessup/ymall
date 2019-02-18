/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-03 05:29:34 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"zh-CN\">\n");
      out.write("<head>\n");
      out.write("    <meta name=\"renderer\" content=\"webkit|ie-comp|ie-stand\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"Cache-Control\" content=\"no-siteapp\">\n");
      out.write("    <title>登陆</title>\n");
      out.write("    <meta name=\"keywords\" content=\"\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <link href=\"../css/iconfont/iconfont.css\" rel=\"stylesheet\"/>\n");
      out.write("    <link href=\"../css/common.css\" rel=\"stylesheet\"/>\n");
      out.write("    <link href=\"../css/login.css\" rel=\"stylesheet\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!--头部-->\n");
      out.write("    <div class=\"login-header\">\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            <div class=\"zp\">\n");
      out.write("                <span class=\"ico\"></span>\n");
      out.write("                <div>正品保障</div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"login-main-wrap\">\n");
      out.write("        <div class=\"login-main wrapper\">\n");
      out.write("            <div class=\"login-box\">\n");
      out.write("                    <div class=\"box-hd\">\n");
      out.write("                        <span class=\"tit\">用户登录</span>\n");
      out.write("                        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/user/register\">注册新账号</a>\n");
      out.write("                    </div>\n");
      out.write("                    <label class=\"txtin-box\">\n");
      out.write("                        <span class=\"ico user\"></span>\n");
      out.write("                        <input id=\"namePho\" class=\"txtin\" type=\"text\" name=\"\" placeholder=\"用户名/手机\" />\n");
      out.write("                    </label>\n");
      out.write("                    <label class=\"txtin-box\">\n");
      out.write("                        <span class=\"ico pwd\"></span>\n");
      out.write("                        <input id=\"pass\" class=\"txtin\" type=\"password\" name=\"\" placeholder=\"密码\" />\n");
      out.write("                        <div id=\"errorAccount\" style=\"color:red;display:inline;\"></div>\n");
      out.write("                    </label>\n");
      out.write("                    <div class=\"clearfix tool\">\n");
      out.write("                        <label class=\"check\"><input type=\"checkbox\" id=\"\" />自动登录</label>\n");
      out.write("                        <a class=\"find\" href=\"../\">忘记密码？</a>\n");
      out.write("                    </div>\n");
      out.write("                    <input class=\"tj\" type=\"submit\" onclick=\"login()\" value=\"登&ensp;录\"/>\n");
      out.write("                    <div class=\"other-way clearfix\">\n");
      out.write("                        <a class=\"item first\" href=\"../\">\n");
      out.write("                            <img src=\"../img/login/weixin.jpg\" alt=\"\" class=\"ico\" />\n");
      out.write("                            <span class=\"label\">微信</span>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"item\" href=\"../\">\n");
      out.write("                            <img src=\"../img/login/qq.jpg\" alt=\"\" class=\"ico\" />\n");
      out.write("                            <span class=\"label\">QQ</span>\n");
      out.write("                        </a>\n");
      out.write("                        <a class=\"item\" href=\"../\">\n");
      out.write("                            <img src=\"../img/login/sina.jpg\" alt=\"\" class=\"ico\" />\n");
      out.write("                            <span class=\"label\">微博</span>\n");
      out.write("                        </a>\n");
      out.write("                    </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"login-footer\">\n");
      out.write("        安徽XXX网络科技有限公司 版权所有 Copyright © 2016-2018   备案号：皖ICP备123456789\n");
      out.write("        <div class=\"authentication\">\n");
      out.write("            <a href=\"../\"><img src=\"../uploads/35.jpg\" alt=\"\" /></a>\n");
      out.write("            <a href=\"../\"><img src=\"../uploads/36.jpg\" alt=\"\" /></a>\n");
      out.write("            <a href=\"../\"><img src=\"../uploads/37.jpg\" alt=\"\" /></a>\n");
      out.write("            <a href=\"../\"><img src=\"../uploads/38.jpg\" alt=\"\" /></a>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("<script src=\"../js/jquery.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"../js/icheck/style.css\"/>\n");
      out.write("<script src=\"../js/icheck/icheck.min.js\"></script>\n");
      out.write("<script src=\"../js/global.js\"></script>\n");
      out.write("<script>\n");
      out.write("\t\n");
      out.write("    $('.check input').iCheck({\n");
      out.write("        checkboxClass: 'sty1-checkbox'\n");
      out.write("    });\n");
      out.write("    \n");
      out.write("    function Post(url,userName){\n");
      out.write("   \t  var f=document.createElement(\"form\");\n");
      out.write("   \t  f.action=url;\n");
      out.write("   \t  f.method=\"post\";//指定为post\n");
      out.write("   \t  f.innerHTML=\"<input type='hidden' name='userName' value='\"+userName+\"'/>\";\n");
      out.write("   \t  document.body.appendChild(f); \n");
      out.write("   \t  f.submit();\n");
      out.write("   \t}\n");
      out.write("    \n");
      out.write("    function login(){\n");
      out.write("            var _password = $(\"#pass\").val();\n");
      out.write("    \t\tvar _username = $(\"#namePho\").val();\n");
      out.write("            $.ajax({\n");
      out.write("                type: \"POST\",\n");
      out.write("                url: \"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/user/doLogin?r=\" + Math.random(),\n");
      out.write("                contentType: \"application/x-www-form-urlencoded; charset=utf-8\",\n");
      out.write("                data: {username:_username,password:_password},\n");
      out.write("                dataType : \"json\",\n");
      out.write("                error: function () {\n");
      out.write("                    $(\"#errorAccount\").html(\"网络超时，请稍后再试\").show().attr({ \"class\": \"error\" });\n");
      out.write("                },\n");
      out.write("                success: function (result) {\n");
      out.write("                    if (result) {\n");
      out.write("                        var obj = eval(result);\n");
      out.write("                        if (obj.status == 200) {\n");
      out.write("                        \tvar userName = _username;\n");
      out.write("         \t\t\t         Post('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/index',userName);      \n");
      out.write("                        }else{\n");
      out.write("                          $(\"#errorAccount\").html(result.msg).show().attr({ \"class\": \"error\" });\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("                }\n");
      out.write("            });\n");
      out.write("    };\n");
      out.write("</script>\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}