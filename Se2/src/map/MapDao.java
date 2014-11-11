package map;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import db.DBConnectionMgr;


public class MapDao{
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private DBConnectionMgr pool;

	public MapDao(){
		try{
			pool = DBConnectionMgr.getInstance();

		}catch(Exception err){
			System.out.println("MapDao() : " + err);
		}
	}
	//¿¸√º ∏  ¡∂»∏
	public Vector getMapList(){
		Vector v = new Vector();
		String sql;

		try{
			sql = "select * from tblmap"
					+ "";
			con=pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){
				MapDto dto = new MapDto();

				dto.setNo(rs.getInt("no"));
				dto.setLatingx(rs.getString("latingx"));
				dto.setLatingy(rs.getString("latingy"));
				dto.setMapdate(rs.getString("date"));
				dto.setTitle(rs.getString("title"));

				v.add(dto);
			}
		}catch(Exception err){
			System.out.println("getMapList() : " + err);
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}

		return v;
	}
	//∏  ¡∂»∏
	public MapDto getMap(int num){
		String sql="";
		int no = num;
		MapDto dto = new MapDto();
		
		try{
			sql = "select * from tblmap where no = "+no ;
			con=pool.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()){

				dto.setNo(rs.getInt("no"));
				dto.setLatingx(rs.getString("latingx"));
				dto.setLatingy(rs.getString("latingy"));
				dto.setMapdate(rs.getString("date"));
				dto.setTitle(rs.getString("title"));

			}
		}catch(Exception err){
			System.out.println("getMap() : " + err);
		}
		finally{
			pool.freeConnection(con, pstmt, rs);
		}
		return dto;
	}


	//∏ ¿˙¡§«œ±‚
	public void insertMap(MapDto dto){
		String sql;
		try{	 

			sql = "insert into tblmap(title,latingx,latingy,date) values(?, ?, ?,sysdate())";
			con=pool.getConnection();
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1 , dto.getTitle());
			pstmt.setString(2 , dto.getLatingx());
			pstmt.setString(3 , dto.getLatingy());

			pstmt.executeUpdate();

		}catch(Exception err){
			System.out.println("insertMap() : " + err);
		}finally{
			pool.freeConnection(con, pstmt, rs);
		}
	}

}
