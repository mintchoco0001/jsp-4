package product;

import java.util.ArrayList;

import common.JDBConnect;

public class ProductDAO extends JDBConnect {

	private ArrayList<ProductDTO> listOfProducts = new ArrayList<ProductDTO>();

	public ProductDAO() {
		String sql = "select * from product";

		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();

			while (rs.next()) {
				ProductDTO dto = new ProductDTO();
				dto.setProductId(rs.getString(1));
				dto.setPname(rs.getString(2));
				dto.setUnitPrice(rs.getInt(3));
				dto.setDescription(rs.getString(4));
				dto.setCategory(rs.getString(5));
				dto.setManuFacturer(rs.getString(6));
				dto.setUnitsInStock(rs.getInt(7));
				dto.setCondition(rs.getString(8));

				listOfProducts.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("상품정보 가져오기 오류");
		}

	}

	public ArrayList<ProductDTO> getAllProducts() {
		return listOfProducts;
	}

	public ProductDTO getProductById(String id) {
		ProductDTO dto = new ProductDTO();
		String sql = "select * from product where p_id=?";

		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();

			while (rs.next()) {
				dto.setProductId(rs.getString(1));
				dto.setPname(rs.getString(2));
				dto.setUnitPrice(rs.getInt(3));
				dto.setDescription(rs.getString(4));
				dto.setCategory(rs.getString(5));
				dto.setManuFacturer(rs.getString(6));
				dto.setUnitsInStock(rs.getInt(7));
				dto.setCondition(rs.getString(8));
			}

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("상품 상세정보 불러오기 실패");
		}
		return dto;
	}
}
