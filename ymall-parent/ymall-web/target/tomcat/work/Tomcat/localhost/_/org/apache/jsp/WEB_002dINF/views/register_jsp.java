/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-05-03 09:20:14 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class register_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>注册</title>\n");
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
      out.write("    <div class=\"main-wrap\">\n");
      out.write("        <div class=\"wrapper\">\n");
      out.write("            <div class=\"center-box\">\n");
      out.write("                    <div class=\"box-hd\">\n");
      out.write("                        <span class=\"tit\">用户注册</span>\n");
      out.write("                        <a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/user/login\">账号登陆</a>\n");
      out.write("                    </div>\n");
      out.write("                    <label class=\"txtin-box\">\n");
      out.write("                        <input id=\"userName\" class=\"txtin\" type=\"text\" name=\"\" placeholder=\"您的帐户名和登陆名\" />\n");
      out.write("                        <div id=\"errorAccount1\" style=\"color:red;display:inline;\"></div>\n");
      out.write("                    </label>\n");
      out.write("                    <label class=\"txtin-box\">\n");
      out.write("                        <input id=\"phone1\" class=\"txtin\" type=\"text\" name=\"\" placeholder=\"建议使用常用手机\" />\n");
      out.write("                        <div id=\"errorAccount2\" style=\"color:red;display:inline;\"></div>\n");
      out.write("                    </label>\n");
      out.write("                    <label class=\"txtin-box txtin-box-code\">\n");
      out.write("                        <input  name=\"htmlCode\" id=\"htmlCode\" type=\"text\" class=\"txtin\" size=\"36\" />\n");
      out.write("\t\t\t\t\t\t<input  class=\"get-yzm\" type=\"button\" value=\"获取短信验证码\" onclick=\"getVerify(this)\"/>\n");
      out.write("\t\t\t\t\t\t<div id=\"errorAccount5\" style=\"color:red;display:inline;\"></div>\n");
      out.write("                    </label>\n");
      out.write("                    <label class=\"txtin-box\">\n");
      out.write("                        <input id=\"password1\" class=\"txtin\" type=\"password\" name=\"\" placeholder=\"设置密码建议至少两种字符组合\" />\n");
      out.write("                        <div id=\"errorAccount3\" style=\"color:red;display:inline;\"></div>\n");
      out.write("                    </label>\n");
      out.write("                    <label class=\"txtin-box\">\n");
      out.write("                        <input id=\"password2\" class=\"txtin\" type=\"password\" name=\"\" placeholder=\"请再次输入密码\" />\n");
      out.write("                        <div id=\"errorAccount4\" style=\"color:red;display:inline;\"></div>\n");
      out.write("                    </label>\n");
      out.write("                    <div class=\"clearfix tool\">\n");
      out.write("                        <label class=\"check\"><input type=\"checkbox\" name=\"\" id=\"\" />7MALL用户注册协议和隐私政策《<a href=\"../\">服务协议</a>》</label>\n");
      out.write("                    </div>\n");
      out.write("                    <input class=\"tj\" type=\"submit\" onclick=\"register()\" value=\"注&ensp;册\" />\n");
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
      out.write("\tvar verify;\n");
      out.write("\tfunction Post(url,userName){\n");
      out.write("\t \t  var f=document.createElement(\"form\");\n");
      out.write("\t \t  f.action=url;\n");
      out.write("\t \t  f.method=\"post\";//指定为post\n");
      out.write("\t \t  f.innerHTML=\"<input type='hidden' name='userName' value='\"+userName+\"'/>\";\n");
      out.write("\t \t  document.body.appendChild(f); \n");
      out.write("\t \t  f.submit();\n");
      out.write(" \t}\n");
      out.write("\t\n");
      out.write("\tfunction register(){\n");
      out.write("\t\tvar userName = $(\"#userName\").val();\n");
      out.write("\t\tvar phone1 = $(\"#phone1\").val();\n");
      out.write("\t\tvar htmlCode =$(\"#htmlCode\").val();\n");
      out.write("\t\tvar password1 = $(\"#password1\").val();\n");
      out.write("\t\tvar password2 = $(\"#password2\").val();\n");
      out.write("\t\tif(userName==\"\"||userName==null){\n");
      out.write("\t\t\t$(\"#errorAccount1\").html(\"<font color='red'>用户名不能为空!</font>\");\n");
      out.write("\t\t}\n");
      out.write("\t\tif(phone1==\"\"||phone1==null){\n");
      out.write("\t\t\t$(\"#errorAccount2\").html(\"<font color='red'>手机号码不能为空!</font>\");\n");
      out.write("\t\t}\n");
      out.write("\t\tif(password1==\"\"||password1==null){\n");
      out.write("\t\t\t$(\"#errorAccount3\").html(\"<font color='red'>密码不能为空!</font>\");\n");
      out.write("\t\t}\n");
      out.write("\t\tif(password2==\"\"||password2==null){\n");
      out.write("\t\t\t$(\"#errorAccount4\").html(\"<font color='red'>确认密码不能为空!</font>\");\n");
      out.write("\t\t}\n");
      out.write("\t\tif(htmlCode==\"\"||htmlCode==null){\n");
      out.write("\t\t\t$(\"#errorAccount4\").html(\"验证码不能为空\");\n");
      out.write("\t\t}\n");
      out.write("\t\tif(!(userName==\"\"&&phone1==\"\"&&password1==\"\"&&password2==\"\")){\n");
      out.write("\t\t\t $.ajax({\n");
      out.write("               url:\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/user/doRegister\",\n");
      out.write("               type:\"POST\",\n");
      out.write("               data:{username:userName,phone:phone1,password:password1},  \n");
      out.write("               dataType:'json', \n");
      out.write("               success:function(data){\n");
      out.write("            \t  Post('");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/index',userName);    \n");
      out.write("               },\n");
      out.write("               error:function(data){\n");
      out.write("            \t   $(\"#errorAccount4\").html(data.msg).show().attr({ \"class\": \"error\" });\n");
      out.write("               }  \n");
      out.write("            });  \n");
      out.write("\t\t}\n");
      out.write("\t}\n");
      out.write("\t\n");
      out.write("\tfunction isNameAvailable(str) {  \n");
      out.write("        var myreg=/^[a-zA-Z]\\w{2,8}$/;  \n");
      out.write("        if (!myreg.test(str)) {  \n");
      out.write("            return false;  \n");
      out.write("        } else {  \n");
      out.write("            return true;  \n");
      out.write("        }  \n");
      out.write("    }  \n");
      out.write("\t\n");
      out.write("\t$(document).ready(function(){\n");
      out.write("         //给账号文本框绑定失去焦点的事件\n");
      out.write("         $(\"#userName\").blur(function(){\n");
      out.write("        \t if(!($(this).val()==\"\"||$(this).val()==null)){\n");
      out.write("        \t\t if(!isNameAvailable($(this).val())){\n");
      out.write("            \t\t $(\"#errorAccount1\").html(\"用户名格式不正确!\");   \n");
      out.write("            \t }else{\n");
      out.write("    \t             $.ajax({\n");
      out.write("    \t            \ttype: \"POST\",\n");
      out.write("    \t                url:\"http://sso.7mall.com/user/check/\"+$(this).val()+\"/1?r=\" + Math.random(),\n");
      out.write("    \t                dataType:'jsonp', \n");
      out.write("    \t                jsonp: \"callback\",\n");
      out.write("    \t    \t\t\tjsonpCallback:\"MusicHandler\",\n");
      out.write("    \t                success:function(result){\n");
      out.write("    \t                \t if (result) {\n");
      out.write("    \t                         var obj = eval(result);\n");
      out.write("    \t                         if (obj.data == true) { \n");
      out.write("    \t                        \t $(\"#errorAccount1\").html(\"该用户名已存在!\");   \n");
      out.write("    \t                         }else{\n");
      out.write("    \t                        \t $(\"#errorAccount1\").html(\"<font color='green'>恭喜,该用户名可以使用!</font>\"); \n");
      out.write("    \t                         }\n");
      out.write("    \t                \t }\n");
      out.write("    \t                }\n");
      out.write("    \t             });  \n");
      out.write("            \t }\n");
      out.write("        \t }\n");
      out.write("         });\n");
      out.write("     });\n");
      out.write("\t\n");
      out.write("\tfunction isPoneAvailable(str) {  \n");
      out.write("        var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;  \n");
      out.write("        if (!myreg.test(str)) {  \n");
      out.write("            return false;  \n");
      out.write("        } else {  \n");
      out.write("            return true;  \n");
      out.write("        }  \n");
      out.write("    }  \n");
      out.write("\t\n");
      out.write("\t$(document).ready(function(){\n");
      out.write("\t\t  $(\"#phone1\").blur(function(){\n");
      out.write("\t\t\t  if(!($(this).val()==\"\"||$(this).val()==null)){\n");
      out.write("\t\t\t\t  if(!isPoneAvailable($(this).val())){\n");
      out.write("\t\t\t\t\t\t$(\"#errorAccount2\").html(\"手机号码格式不正确!\");\n");
      out.write("\t\t\t\t\t}else{\n");
      out.write("\t\t\t\t\t\t$.ajax({\n");
      out.write("\t\t\t           \t \turl:\"http://sso.7mall.com/user/check/\"+$(this).val()+\"/2?r=\" + Math.random(),\n");
      out.write("\t\t\t                dataType:'jsonp', \n");
      out.write("\t\t\t                success:function(result){\n");
      out.write("\t\t\t               \t if (result) {\n");
      out.write("\t\t\t                        var obj = eval(result);\n");
      out.write("\t\t\t                        if (obj.data == true) {  \n");
      out.write("\t\t\t                       \t $(\"#errorAccount2\").html(\"该手机号已经被注册\");   \n");
      out.write("\t\t\t                        }else{\n");
      out.write("\t\t\t                       \t $(\"#errorAccount2\").empty();\n");
      out.write("\t\t\t                        }\n");
      out.write("\t\t\t               \t }\n");
      out.write("\t\t\t                }  \n");
      out.write("\t\t\t            });    \n");
      out.write("\t\t\t\t\t}\n");
      out.write("\t\t\t  }\n");
      out.write("\t        });\n");
      out.write("\t});\n");
      out.write("\t\n");
      out.write("\t$(document).ready(function(){\n");
      out.write("\t   $(\"#password1\").blur(function(){\n");
      out.write("\t\t   if(!($(this).val()==\"\"||$(this).val()==null)){\n");
      out.write("\t\t\t   if($(this).val().length>20 || $(this).val().length<6){\n");
      out.write("\t\t\t\t   $(\"#errorAccount3\").html(\"<font color='red'>长度只能在6-20个字符之间</font>\");\n");
      out.write("\t\t\t   }else{\n");
      out.write("\t\t\t\t   $(\"#errorAccount3\").empty();\n");
      out.write("\t\t\t   }\n");
      out.write("\t\t   }\n");
      out.write("\t   });\n");
      out.write("\t});\n");
      out.write("\t\n");
      out.write("\t$(document).ready(function(){\n");
      out.write("\t\t   $(\"#htmlCode\").blur(function(){\n");
      out.write("\t\t\t   if(!($(this).val()==\"\"||$(this).val()==null)){\n");
      out.write("\t\t\t\t   if($(this).val()==verify){\n");
      out.write("\t\t\t\t\t   $(\"#errorAccount5\").empty();\n");
      out.write("\t\t\t\t   }else{\n");
      out.write("\t\t\t\t\t   $(\"#errorAccount5\").html(\"验证码输入错误\");\n");
      out.write("\t\t\t\t   }\n");
      out.write("\t\t\t   }\n");
      out.write("\t\t   });\n");
      out.write("\t\t});\n");
      out.write("\t\n");
      out.write("\t$(document).ready(function(){\n");
      out.write("\t\t   $(\"#password2\").blur(function(){\n");
      out.write("\t\t\t   var v = $(\"#password1\").val();\n");
      out.write("\t\t\t   if($(this).val()!==v){\n");
      out.write("\t\t\t\t   $(\"#errorAccount4\").html(\"<font color='red'>两次密码不一致!</font>\");\n");
      out.write("\t\t\t   }else{\n");
      out.write("\t\t\t\t   $(\"#errorAccount4\").empty();\n");
      out.write("\t\t\t   }\n");
      out.write("\t\t   });\n");
      out.write("\t\t});\n");
      out.write("\t\n");
      out.write("    $('.check input').iCheck({\n");
      out.write("           checkboxClass: 'sty1-checkbox'\n");
      out.write("       });\n");
      out.write("    \n");
      out.write("    //获取验证码开始\n");
      out.write("    var nums = 60;\n");
      out.write("    var clock = '';\n");
      out.write("    var btn;\n");
      out.write("    function getVerify(thisBtn){\n");
      out.write("        var mobile = $(\"#phone1\").val();\n");
      out.write("        if(mobile==\"\"){\n");
      out.write("            alert(\"请输入手机号码！\");\n");
      out.write("            document.all.item_consult_phone.focus();\n");
      out.write("            return false;\n");
      out.write("        }\n");
      out.write("        if(mobile!=\"\"){\n");
      out.write("            var reg = /^([0-9]{11})?$/;\n");
      out.write("            var flag = reg.test(mobile);\n");
      out.write("            if(!flag){\n");
      out.write("                alert(\"请输入正确的手机号码格式！\");\n");
      out.write("                document.all.item_consult_phone.focus();\n");
      out.write("                return false;\n");
      out.write("            }else{\n");
      out.write("                var flag = true;\n");
      out.write("                $.ajax({\n");
      out.write("                    async: false,\n");
      out.write("                    type: \"POST\",\n");
      out.write("                    cache: false,\n");
      out.write("                    url: \"/user/sendSecurityCode\",\n");
      out.write("                    data: {\n");
      out.write("                        mobile:mobile\n");
      out.write("                    },\n");
      out.write("                    dataType:\"json\",\n");
      out.write("                    success: function(data){\n");
      out.write("                        if(data.result == \"1\"){\n");
      out.write("                            alert(\"短信验证码已成功发送至您的手机，请将其填写在输入框!\");\n");
      out.write("                            verify = data.verify;\n");
      out.write("                        }else{\n");
      out.write("                            flag = false;\n");
      out.write("                            alert(\"短信验证码发送失败！\");\n");
      out.write("                        }\n");
      out.write("                    }\n");
      out.write("            });\n");
      out.write("            btn = thisBtn;\n");
      out.write("            btn.disabled = true; //将按钮置为不可点击\n");
      out.write("            btn.value = nums+'秒后可重新获取';\n");
      out.write("            clock = setInterval(doLoop, 1000); //一秒执行一次\n");
      out.write("\n");
      out.write("            return flag;\n");
      out.write("        }\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("function doLoop()  {\n");
      out.write("    nums--; \n");
      out.write("    if(nums > 0){\n");
      out.write("        btn.value = nums+'秒后可重新获取';  \n");
      out.write("        }else{ \n");
      out.write("            clearInterval(clock); //清除js定时器  \n");
      out.write("            btn.disabled = false;   \n");
      out.write("            btn.value = '点击发送验证码';  \n");
      out.write("            nums = 60; //重置时间  \n");
      out.write("            }  \n");
      out.write("    }\n");
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
