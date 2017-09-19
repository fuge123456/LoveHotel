package hotel.pojo;

/**
 * 入住用户信息
 * @author BIG
 *
 */
public class Accupant {
	private String orderId; //订单id
	private String accupantName ; //入住人员姓名
	private String cardType; //证件类型
	private String cardNumber; //证件号码
	private String accupantGender; //人员性别
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public String getAccupantName() {
		return accupantName;
	}
	public void setAccupantName(String accupantName) {
		this.accupantName = accupantName;
	}
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getCardNumber() {
		return cardNumber;
	}
	public void setCardNumber(String cardNumber) {
		this.cardNumber = cardNumber;
	}
	public String getAccupantGender() {
		return accupantGender;
	}
	public void setAccupantGender(String accupantGender) {
		this.accupantGender = accupantGender;
	}
	
	
}
