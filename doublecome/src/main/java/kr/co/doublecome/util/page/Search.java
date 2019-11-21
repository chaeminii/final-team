package kr.co.doublecome.util.page;

import kr.co.doublecome.repository.vo.Page;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)

public class Search extends Page{

	public Search() {
		super();
	}
	

	public Search(int pageNo) {
		super(pageNo);
	}
	

	public Search(int pageNo, int listSize) {
		super(pageNo, listSize);
	}
	
	private String SearchType;
	private String keyword;
	private String sort;	
}
