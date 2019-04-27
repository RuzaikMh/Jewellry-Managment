package Model;
public class Items {

	private String ItemNo;
	private String ProductName;
	private String Category;
	private double Price;
	private double weight;
	private int Qty;
	private int stock;
	private String Description;
	private String Pimage;  
	private int No;
	
		public int GetNo() {
			return No;
		}

		public void SetNo(int no) {
			No = no;
		}

		public String GetPimage() {
			return Pimage;
		}

		public void SetPimage(String pimage) {
			Pimage = pimage;
		}

		public String GetDescription() {
			return Description;
		}

		public void SetDescription(String description) {
			Description = description;
		}

		public int GetQty() {
			return Qty;
		}

		public void SetQty(int qty) {
			Qty = qty;
		}
	
		public int GetStock() {
		return stock;
		}

		public void SetStock(int stock) {
			this.stock = stock;
		}

		public void SetItemNo (String ItemNo) {
			this.ItemNo = ItemNo;
		}
		
		public void SetProductName (String ProductName) {
			this.ProductName = ProductName;
		}
		
		
		public void SetCategory (String Category) {
			this.Category = Category;
		}
		
		public void SetPrice (double Price) {
			this.Price = Price;
		}
		
		public String GetItemNo() {
			return ItemNo;
		}
		
		public String GetProductName() {
			return ProductName;
		}
		
		
		public String GetCategory() {
			return Category;
		}
		
		public double GetPrice() {
			return Price;
		}
		
		public boolean isInStock(int qty) {
			if(qty>this.stock)
				return false;
			return true;
		}
		public void SetWeight(double wet) {
			weight=wet;
		}
		public double GetWeight() {
			return weight;
		}

		@Override
		public String toString() {
			return "Items [ItemNo=" + ItemNo + ", ProductName=" + ProductName + ", Category=" + Category + ", Price="
					+ Price + ", Qty=" + Qty + ", stock=" + stock + ", Description=" + Description + ", Pimage=" + Pimage
					+ "]";
		}
}
