<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
.right {
	text-align: right;
}
#form1 {
	text-align: center;
}
.normal {
	text-align: left;
	font-weight: bold;
	font-family: Arial, Helvetica, sans-serif;
}
.unormal {
	font-family: Arial, Helvetica, sans-serif;
}
.center1 {	text-align: center;
}
</style>
</head>
<body>
<%@ page language="java" %>
<table width="993" height="330" border="0">
  <tr>
    <td width="205" height="89"><img src="images/head.jpg" width="251" height="88" alt="Logo" />
    <hr /></td>
    <td width="772"><table width="723" height="88" border="0">
      <tr>
        <td width="713" class="right">24X7 Customer Support - Contact us | 
        <% if(session.getAttribute("name")==null) {
			%>
            <a href="login.jsp">Login</a> | <a href="register.jsp">Signup</a>
            <%} else {
				%>
                <a href="logout.jsp">Logout</a>
                <%}%>
                </td>
      </tr>
      <tr>
        <td><form id="form1" name="form1" method="post" action="search.jsp">
          <input name="search" type="text" id="search" size="60" />
          <label>
            <input type="submit" name="submit" id="button" value="Search" />
          </label>
        </form></td>
      </tr>
    </table>
    <hr /></td>
  </tr>
  <tr>
    <td><table width="251" height="482" border="0">
      <tr>
        <td height="184"><table width="242" height="171" border="0">
          <tr>
            <td class="normal">LAPTOP BRANDS</td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" />
            <input type="hidden" name="category" value="Samsung" />
            <input type="image" src="images/samsung.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Asus" /><input type="image" src="images/asus.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Apple" /><input type="image" src="images/apple.png" /></form></td>
          </tr>
          <tr>
            <td height="22"><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Lenova" /><input type="image" src="images/lenova.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="brand" /><input type="hidden" name="category" value="Msi" /><input type="image" src="images/msi.png" /></form></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="201"><table width="243" height="180" border="0">
          <tr>
            <td width="233" class="normal">MOBILE TYPES</td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="and" /><input type="image" src="images/and.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="sma" /><input type="image" src="images/sma.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="dua" /><input type="image" src="images/dua.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="val" /><input type="image" src="images/val.png" /></form></td>
          </tr>
          <tr>
            <td><form action="category.jsp">
            <input type="hidden" name="type" value="mtype" /><input type="hidden" name="category" value="win" /><input type="image" src="images/win.png" /></form></td>
          </tr>
        </table></td>
      </tr>
      
    </table></td>
    <td><table width="825"  height="684" border="0">
      <tr class="normal">
        <td height="30">BEST SELLING</td>
      </tr>
      <tr>
        <td height="261"><table  width="814" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="S001"> 
<input name="buy" type="image" value="grand" src="images/asusBest.jpg" width="180" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Asus - 15.6" Laptop - Intel Core i3 - 4GB Memory - 1TB Hard Drive - Silver</p>
              <p class="center1">$299.99</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
<input type="hidden" name="product" value="S002">
<input name="buy" type="image" value="s4" src="images/lenovaBest.jpg" width="180" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>Lenovo - Ideapad 100s 14" Laptop - Intel Celeron - 2GB Memory - 64GB eMMC Flash Storage - Silver</p>
              <p>$179.99</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="L001"> 
<input name="buy" type="image" value="g pro" src="images/asusBest2.jpg" width="180" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Asus - 2-in-1 15.6" Touch-Screen Laptop - Intel Core i7 - 12GB Memory - 2TB Hard Drive - Black</p>
              <p class="center1">$999.99</p>
            </td>
          </tr>
        </table></td>
      </tr>
      
      
      <tr class="normal">
        <td height="30">NEW ARRIVALS</td>
      </tr>
      <tr>
        <td height="261"><table width="814" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="N001"> 
<input name="buy" type="image" value="grand" src="images/msi.jpg" width="200" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">MSI - GT72S DominatorProGDragon-070 17.3" Laptop - Intel Core i7 (6th Gen.) - 32GB Memory - 1TB HDD + 2*128GB SSD - Aluminium Black</p>
              <p class="center1">$2.999.99</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
<input type="hidden" name="product" value="N002">
<input name="buy" type="image" value="s4" src="images/macbook.jpg" width="200" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>Apple - Macbook® (Latest Model) - 12" Display - Intel Core M3 - 8GB Memory - 256GB Flash Storage - Gold</p>
              <p>$1,299.99</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="N003"> 
<input name="buy" type="image" value="g pro" src="images/samsungnew.jpg" width="200" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Samsung - Notebook 9 pro 15.6" 4K Ultra HD Touch-Screen Laptop - Intel Core i7 - 8GB Memory - 256GB SSD - Pure Black</p>
              <p class="center1">$1,499.99</p>
            </td>
          </tr>
        </table></td>
      </tr>
      
      
      <tr class="normal">
        <td height="30">CUSTOMER RATING</td>
      </tr>
      <tr>
        <td height="261"><table width="814" height="258" border="0">
          <tr>
            <td width="228"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="C001"> 
<input name="buy" type="image" value="grand" src="images/applec1.jpg" width="200" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Apple - MacBook Pro with Retina display (Latest Model) - 13.3" Display - 8GB Memory - 256GB Flash Storage - Silver</p>
              <p class="center1">$1,399.99</p>
            </td>
            <td width="240" class="center1"><table width="117" height="173" border="0" align="center">
              <tr>
                <td width="111"><form action="product.jsp"> 
<input type="hidden" name="product" value="C002">
<input name="buy" type="image" value="s4" src="images/applec2.jpg" width="200" height="165"> 
</form></td>
              </tr>
            </table></p>
              <p>Apple - MacBook Pro with Retina display (Latest Model) - 13.3" Display - 8GB Memory - 512GB Flash Storage - Silver</p>
              <p>$1,699.99</p></td>
            <td width="224"><table width="120" height="173" border="0" align="center">
              <tr>
                <td><form action="product.jsp"> 
<input type="hidden" name="product" value="C003"> 
<input name="buy" type="image" value="g pro" src="images/applec3.jpg" width="200" height="165"> 
</form></td>
              </tr>
            </table>
              <p class="center1">Apple - MacBook® Pro - Intel Core i5 - 13.3" Display - 4GB Memory - 500GB Hard Drive - Silver</p>
              <p class="center1">$999.99</p>
            </td>
          </tr>
        </table></td>
      </tr>
      
      
    </table></td>
  </tr>
</table>

</body>
</html>