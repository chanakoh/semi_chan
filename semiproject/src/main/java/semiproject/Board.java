package semiproject;

import java.io.File;
import java.sql.Date;

public class Board {
	private int boardno;
	
	private String boardTitle;
	private String boardText;
	private Date boardtime;
	private String bid;
	
	
	public Board(int boardno,String boardTitle,Date boardtime,String bid){
		this.boardno=boardno;
		this.boardTitle=boardTitle;
		this.boardtime = boardtime;
		this.bid=bid;
	}	
		public Board(String boardTitle,String boardText){
		
			this.boardTitle=boardTitle;
			this.boardText=boardText;
			
		
		
	}
	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}


	public Date getBoardtime() {
		return boardtime;
	}

	public void setBoardtime(Date boardtime) {
		this.boardtime = boardtime;
	}


	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardText() {
		return boardText;
	}

	public void setBoardText(String boardText) {
		this.boardText = boardText;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	
	
}
