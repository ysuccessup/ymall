/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-04-15 08:54:39 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class my_002dorders_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.release();
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"zh-CN\">\n");
      out.write("<head>\n");
      out.write("    <meta name=\"renderer\" content=\"webkit|ie-comp|ie-stand\">\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta http-equiv=\"Cache-Control\" content=\"no-siteapp\">\n");
      out.write("    <title>订单</title>\n");
      out.write("    <meta name=\"keywords\" content=\"\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <link href=\"../css/iconfont/iconfont.css\" rel=\"stylesheet\"/>\n");
      out.write("    <link href=\"../css/common.css\" rel=\"stylesheet\"/>\n");
      out.write("    <link href=\"../css/uc.css\" rel=\"stylesheet\"/>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write(" \t<!-- header start -->\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "/WEB-INF/views/header.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("userName", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${userName}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false), request.getCharacterEncoding()), out, false);
      out.write(" \n");
      out.write("\t<!-- header end -->\n");
      out.write("    <div class=\"uc-header-bg\">\n");
      out.write("        <div class=\"uc-header wrapper\">\n");
      out.write("            <a class=\"logo\" href=\"../index.html\"><img src=\"../img/logo2.png\" alt=\"\" /></a>\n");
      out.write("            <div class=\"back-home\"><a href=\"../index\">返回商城首页</a></div>\n");
      out.write("            <ul class=\"uc-nav\">\n");
      out.write("                <li><a >首页</a></li>\n");
      out.write("                <li class=\"toggle\">\n");
      out.write("                    <span class=\"label\">账户设置<i class=\"iconfont\"></i></span>\n");
      out.write("                    <div class=\"toggle-cont\">\n");
      out.write("                        <a >个人信息</a>\n");
      out.write("                        <a >安全设置</a>\n");
      out.write("                        <a >收货地址</a>\n");
      out.write("                    </div>\n");
      out.write("                </li>\n");
      out.write("                <li><a >消息中心</a></li>\n");
      out.write("            </ul>\n");
      out.write("            <div class=\"schbox\">\n");
      out.write("                <form action=\"\">\n");
      out.write("                    <input class=\"search-txt\" type=\"text\" />\n");
      out.write("                    <button class=\"search-btn\">搜索</button>\n");
      out.write("                    <div class=\"suggest-box\">\n");
      out.write("                        <div class=\"item\" data-title=\"上衣 短款 短袖\">上衣 短款 短袖<div class=\"tags\"><span>雪纺</span><span>蕾丝</span><span>一字领</span></div></div>\n");
      out.write("                    </div>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"wrapper uc-router\">\n");
      out.write("        <ul>\n");
      out.write("            <li><a >首页</a></li>\n");
      out.write("            <li><span class=\"divider\"></span></li>\n");
      out.write("            <li><span>个人中心</span></li>\n");
      out.write("        </ul>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"wrapper\">\n");
      out.write("        <div class=\"uc-main clearfix\">\n");
      out.write("            <div class=\"uc-aside\">\n");
      out.write("                <div class=\"uc-menu\">\n");
      out.write("                    <div class=\"tit\">订单中心</div>\n");
      out.write("                    <ul class=\"sublist\">\n");
      out.write("                        <li><a class=\"active\" >我的订单</a></li>\n");
      out.write("                        <li><a >我的收藏</a></li>\n");
      out.write("                        <li><a >浏览历史</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"tit\">客户服务</div>\n");
      out.write("                    <ul class=\"sublist\">\n");
      out.write("                        <li><a >取消订单记录</a></li>\n");
      out.write("                        <li><a >退款/退货</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"tit\">账户中心</div>\n");
      out.write("                    <ul class=\"sublist\">\n");
      out.write("                        <li><a >账户信息</a></li>\n");
      out.write("                        <li><a >账户安全</a></li>\n");
      out.write("                        <li><a >消费记录</a></li>\n");
      out.write("                        <li><a >收货地址</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                    <div class=\"tit\">消息中心</div>\n");
      out.write("                    <ul class=\"sublist\">\n");
      out.write("                        <li><a >商品评价</a></li>\n");
      out.write("                        <li><a >站内消息</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"uc-content\">\n");
      out.write("                <div class=\"uc-panel\">\n");
      out.write("                    <div class=\"uc-bigtit\">我的订单</div>\n");
      out.write("                    <div class=\"uc-panel-bd\">\n");
      out.write("                        <div class=\"uc-sort\">\n");
      out.write("                            <div class=\"uc-tabs\">\n");
      out.write("                                <a class=\"item active\" >所有订单</a>\n");
      out.write("                                <a class=\"item\" >代付款（1）</a>\n");
      out.write("                                <a class=\"item\" >待发货</a>\n");
      out.write("                                <a class=\"item\" >待收货</a>\n");
      out.write("                                <a class=\"item\" >待评价</a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"uc-search\">\n");
      out.write("                                <form action=\"\">\n");
      out.write("                                    <input type=\"text\" class=\"sch-input\" placeholder=\"输入商品名称,订单号，商品编号\" />\n");
      out.write("                                    <button class=\"sch-btn\"><i class=\"iconfont icon-search\"></i></button>\n");
      out.write("                                </form>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <table class=\"uc-table\">\n");
      out.write("                            <thead>\n");
      out.write("                                <td></th>\n");
      out.write("                                <th></th>\n");
      out.write("                                <th></th>\n");
      out.write("                                <th width=\"120\"></th>\n");
      out.write("                            </thead>  ");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                        </table>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!--脚部-->\n");
      out.write("    <div class=\"fatfooter\">\n");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <!--脚部-->\n");
      out.write("</body>\n");
      out.write("<script src=\"../js/jquery.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"../js/icheck/style.css\"/>\n");
      out.write("<script src=\"../js/icheck/icheck.min.js\"></script>\n");
      out.write("<script src=\"../js/global.js\"></script>\n");
      out.write("<script>\n");
      out.write("\n");
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

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fforEach_005f0.setParent(null);
    // /WEB-INF/views/my-orders.jsp(113,38) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/my-orders.jsp(113,38) '${orderItemList}'",_el_expressionfactory.createValueExpression(_jspx_page_context.getELContext(),"${orderItemList}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
    // /WEB-INF/views/my-orders.jsp(113,38) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVar("orderItem");
    // /WEB-INF/views/my-orders.jsp(113,38) name = varStatus type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fforEach_005f0.setVarStatus("status");
    int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
    try {
      int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
      if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("\t                            <tr class=\"order-goods\">\n");
          out.write("\t                                <td>\n");
          out.write("\t                                    <div class=\"goods-info\">\n");
          out.write("\t                                        <img class=\"figure\" src=\"\" alt=\"\" />\n");
          out.write("\t                                        <a class=\"text-info refund\" href=\"../uc-apply-refund.html\">申请退货</a>\n");
          out.write("\t                                        <div class=\"info\">\n");
          out.write("\t                                         \t<img src=\"");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderItem.picPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("\" alt=\"\">\n");
          out.write("\t                                            <div>");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderItem.title}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write(' ');
          out.write('×');
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderItem.num}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("</div>\n");
          out.write("\t                                        </div>\n");
          out.write("\t                                    </div>\n");
          out.write("\t                                </td>\n");
          out.write("\t                                <td>\n");
          out.write("\t                                    金额：<span class=\"text-theme fwb\">");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${orderItem.price}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
          out.write("元</span>\n");
          out.write("\t                                </td>\n");
          out.write("\t                                <td>\n");
          out.write("\t                               \t\t <span class=\"status\">快件已签收</span><br />\n");
          out.write("\t                                    <a class=\"text-info\" href=\"../uc-order-detail.html\">订单详情</a><br />\n");
          out.write("\t                                    <a class=\"text-info\" >查看物流</a>\n");
          out.write("\t                                </td>\n");
          out.write("\t                                <td>\n");
          out.write("\t                                    <a  class=\"ui-btn-theme uc-btn-md\">追加评论</a>\n");
          out.write("\t                                </td>\n");
          out.write("\t                            </tr>\n");
          out.write("                            ");
          int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (java.lang.Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_005fforEach_005f0.doFinally();
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvarStatus_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
    }
    return false;
  }
}