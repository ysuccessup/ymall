package com.ymall.web.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.joda.time.DateTime;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ymall.web.pojo.Cart;
import com.ymall.web.pojo.Order;
import com.ymall.web.pojo.OrderItem;
import com.ymall.web.pojo.OrderShipping;
import com.ymall.web.pojo.Shipping;
import com.ymall.web.pojo.User;
import com.ymall.web.service.CartService;
import com.ymall.web.service.ItemService;
import com.ymall.web.service.OrderService;
import com.ymall.web.threadlocal.UserThreadLocal;
import com.ymall.web.utils.PaymentUtil;

@RequestMapping("order")
@Controller
public class OrderController {
	
	private static Properties prop = new Properties();
	static{
		try {
			//读取配置文件
			String path = OrderController.class.getClassLoader().getResource("merchantInfo.properties").getPath();
			prop.load(new FileInputStream(new File(path)));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
    @Autowired
    private ItemService itemService;

    @Autowired
    private OrderService orderService;

    @Autowired
    private CartService cartService;
    
    @RequestMapping("{itemId}")
    public String create(@PathVariable("itemId") Long itemId,Model model) {
        model.addAttribute("item", itemService.queryItemById(itemId));
        return "confirm-order";
    }

    //结算
    @RequestMapping("submit")
    public String create(Order order,Model model,String[] title,String[] itemId,String[] picPath,String[] price,String[] num,String money,String address) throws UnsupportedEncodingException {
    	User user = UserThreadLocal.get();
        order.setUserId(user.getId());
        order.setBuyerNick(user.getUsername());
        order.setPaymentType(Integer.valueOf(1));
        order.setPostFee("0");
        String[] split = URLDecoder.decode(address,"utf-8").split(",");
        OrderShipping orderShipping = new OrderShipping();
        orderShipping.setUserId(user.getId());
        orderShipping.setReceiverAddress(split[3]);
        orderShipping.setReceiverName(split[2]);
        orderShipping.setReceiverCity(split[1]);
        orderShipping.setReceiverMobile(split[4]);
        orderShipping.setReceiverState(split[0]);
        orderShipping.setReceiverZip(split[5]);
        order.setOrderShipping(orderShipping);
        List<OrderItem> orderItemList = new ArrayList<OrderItem>();
        List<Cart> cartList = new ArrayList<Cart>();
        for (int i = 0; i < title.length; i++) {
        	Cart cart = new Cart();
        	cart.setItemTitle(URLDecoder.decode(title[i],"utf-8"));
        	cart.setNum(Integer.valueOf(num[i]));
        	cartList.add(cart);
        	OrderItem orderItem = new OrderItem();
        	orderItem.setItemId(itemId[i]);
        	orderItem.setNum(Integer.valueOf(num[i]));
        	orderItem.setPicPath(picPath[i]);
        	orderItem.setPrice(Long.valueOf(price[i]));
        	orderItem.setTitle(URLDecoder.decode(title[i],"utf-8"));
        	orderItem.setTotalFee(String.valueOf(orderItem.getPrice()*orderItem.getNum()));
        	orderItemList.add(orderItem);
		}
        order.setOrderItems(orderItemList);
        String orderNo = orderService.createOrder(order);
        model.addAttribute("orderNo", orderNo);
        model.addAttribute("money", money);
        model.addAttribute("cartList", cartList);
        model.addAttribute("orderShipping", orderShipping);
        return "pay";
    }

    //创建订单
    @RequestMapping("create")
    public String createOrder(Model model,String checkval) {
        User user = UserThreadLocal.get();
        // 查询该用户的购物车
        List<Cart> carts = new ArrayList<Cart>();
        String[] itemId = checkval.split(",");
        for (int i = 0; i < itemId.length; i++) {
        	Long id = Long.valueOf(itemId[i]);
        	Cart cart = cartService.queryCartByUserAndItemId(user,id);
        	carts.add(cart);
		}
        Long userId = user.getId();
        List<OrderShipping> orderShips = orderService.queryAddressByUserId(userId);
        model.addAttribute("orderShips", orderShips);
        model.addAttribute("carts", carts);
        return "confirm-order";
    }
    
  //立即购买
    @RequestMapping("buyNow")
    public String buyNow(Model model,String checkval,Integer num) {
        User user = UserThreadLocal.get();
        // 查询该用户的购物车
        List<Cart> carts = new ArrayList<Cart>();
        String[] itemId = checkval.split(",");
        for (int i = 0; i < itemId.length; i++) {
        	Long id = Long.valueOf(itemId[i]);
        	Cart cart = cartService.queryCartByUserAndItemId(user,id);
        	cart.setNum(num);
        	carts.add(cart);
		}
        Long userId = user.getId();
        List<OrderShipping> orderShips = orderService.queryAddressByUserId(userId);
        model.addAttribute("orderShips", orderShips);
        model.addAttribute("carts", carts);
        return "confirm-order";
    }
    
    /**
     * 添加收货地址
     * 
     * @param id
     * @return
     */
    @RequestMapping("addAddress")
    @ResponseBody
    public void addAddress(HttpServletRequest request) {
    	User user = UserThreadLocal.get();
    	Shipping ship = new Shipping();
    	ship.setUserId(user.getId());
    	ship.setReceiverAddress(request.getParameter("myaddress"));
    	ship.setReceiverCity(request.getParameter("mycity"));
    	ship.setReceiverMobile(request.getParameter("mymobile"));
    	ship.setReceiverName(request.getParameter("myname"));
    	ship.setReceiverState(request.getParameter("mystate"));
    	ship.setReceiverZip(request.getParameter("myzip"));
    	orderService.addAddress(ship);
    }
    
    /**
     * 下单成功页
     * 
     * @param id
     * @return
     */
    @RequestMapping("success")
    public String success(@RequestParam("id") String id,Model model) {
        Order order = orderService.queryOrderById(id);
        model.addAttribute("order", order);
        model.addAttribute("date", new DateTime().plusDays(2).toString("MM月dd日"));
        return "success";

    }
    
    //我的订单
    @RequestMapping("myorder")
    public String myorder(Model model) {
    	User user = UserThreadLocal.get();
    	List<OrderItem>  orderItemList= orderService.queryOrderItemByUserId(user.getId());
    	model.addAttribute("orderItemList", orderItemList);
        return "my-orders";
    }
    
    @RequestMapping("payMoney")
	public String spend(HttpServletRequest request, HttpServletResponse response,Model model)
			throws ServletException, IOException {
		//1、接收参数
		String oid=request.getParameter("orderid");
		String pd_FrpId = request.getParameter("pd_FrpId");
		//String money = request.getParameter("money");
		//2、准备需要的参数
		String p0_Cmd = "Buy";
		String p1_MerId = prop.getProperty("p1_MerId");
		String p2_Order =  oid;
		String p3_Amt ="0.01";//支付金额单位为元   测试时使用该值
		String p4_Cur = "CNY";
		String p5_Pid = "";
		String p6_Pcat ="";
		String p7_Pdesc ="";
		String p8_Url = prop.getProperty("responseURL");
		String p9_SAF ="";
		String pa_MP = "";
		String pr_NeedResponse = "1";
		String hmac = PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order,
				p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF,
				pa_MP, pd_FrpId, pr_NeedResponse,prop.getProperty("keyValue"));
		//3、将参数保存到request作用域
		model.addAttribute("pd_FrpId", pd_FrpId);
		model.addAttribute("p0_Cmd", p0_Cmd);
		model.addAttribute("p1_MerId", p1_MerId);
		model.addAttribute("p2_Order", p2_Order);
		model.addAttribute("p3_Amt", p3_Amt);
		model.addAttribute("p4_Cur", p4_Cur);
		model.addAttribute("p5_Pid", p5_Pid);
		model.addAttribute("p6_Pcat", p6_Pcat);
		model.addAttribute("p7_Pdesc", p7_Pdesc);
		model.addAttribute("p8_Url", p8_Url);
		model.addAttribute("p9_SAF", p9_SAF);
		model.addAttribute("pa_MP", pa_MP);
		model.addAttribute("pr_NeedResponse", pr_NeedResponse);
		model.addAttribute("hmac", hmac);
		//4转发
		return "confirm";
	}
    
    @RequestMapping("callBack")
	public String callBack(HttpServletRequest request, HttpServletResponse response,Model model)
		throws ServletException, IOException {
		//1、接收参数
		String p1_MerId = request.getParameter("p1_MerId");
		String r0_Cmd="Buy";
		String r1_Code = request.getParameter("r1_Code");
		//易宝支付平台的流水号（唯一标识id）
		String r2_TrxId = request.getParameter("r2_TrxId");
		//付款金额
		String r3_Amt = request.getParameter("r3_Amt");
		String r4_Cur = request.getParameter("r4_Cur");
		String r5_Pid = request.getParameter("r5_Pid");
		//订单id
		String r6_Order = request.getParameter("r6_Order");
		String r7_Uid = request.getParameter("r7_Uid");
		String r8_MP = request.getParameter("r8_MP");
		//“1”: 浏览器重定向;“2”: 服务器点对点通讯.
		String r9_BType = request.getParameter("r9_BType");
		String hmac = request.getParameter("hmac");
		//3、判断信息是否未被篡改
		boolean isVerify = PaymentUtil.verifyCallback(hmac, p1_MerId, r0_Cmd, r1_Code, 
				r2_TrxId, r3_Amt, r4_Cur, r5_Pid, r6_Order, r7_Uid, r8_MP,
				r9_BType, prop.getProperty("keyValue"));
		if(isVerify){//未被篡改
			//4、重定向.点对点通讯
			if("1".equals(r9_BType)||"2".equals(r9_BType)){
				model.addAttribute("payment", r3_Amt);
				model.addAttribute("orderId", r6_Order);
				//TODO
				//修改状态，删除购物车中已购买商品
				/*Order order = orderService.queryOrderById(r6_Order);
				order.setPayment(r3_Amt);*/
				return "success";
			}
		}else{//被篡改
			System.out.println("信息被篡改!!");
		}
		return "";
	}
}
