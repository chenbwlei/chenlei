package com.example.demo.utils;

/*
 * 1���ѷ�ҳ�õĲ�����װ���������У�7����������Ҫ��ֵ����ֻ��get����
 * 2���Ѽ������д��������Ĺ��췽����
 * 3����servlet����д�õķ�ҳ������
 * 4���޸�service��dao���ҳ��ȡֵ
 * public PageUtil(String page, int totalCount, int pageSize){ ǰ̨���ܵ�ǰҳ����̨��ѯ���������Զ����ҳ��λ
 * 
 */

public class PageUtil {
	
	//��װ����
	private int currentPage;  //��ǰҳ
	private int prevPage;     //��һҳ
	private int nextPage;     //��һҳ
	private int totalPage;    //��ҳ��/βҳ
	private int totalCount;   //�ܼ�¼��
	private int pageSize;     //��ҳ��λ
	private int startIndex;   //����ֵ
	private int endPage;	//βҳ

	//���췽��
	public PageUtil(String page,int totalCount, int pageSize){
		
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		initTotalPage();
		initCurrentPage(page);
		initPrevPage();
		initNextPage();
		initStartIndex();
		initendPage();
	}
	
	private void initendPage() {
		endPage = pageSize*currentPage;
	}
	/*
	 * ���ܣ��������±꣩
	 */
	private void initStartIndex() {
		startIndex = (currentPage - 1)*pageSize;
	}

	/*
	 * ���ܣ���һҳ
	 */
	private void initNextPage() {
		nextPage = currentPage == totalPage ? totalPage : (currentPage + 1);
	}



	/*
	 * ���ܣ�βҳ����ҳ����
	 */
	private void initTotalPage() {
		totalPage = (totalCount/pageSize)+(totalCount%pageSize == 0 ? 0 : 1);
	}

	/*
	 * ���ܣ���һҳ
	 */
	private void initPrevPage() {
		prevPage = currentPage == 1 ? 1 : currentPage - 1;
	}


	/*
	 * ���ܣ���ǰҳ
	 */
	private void initCurrentPage(String page) {
		if(page == null){
			page = "1";
		}
		this.currentPage = Integer.parseInt(page);
		
//		if(currentPage > totalPage){
//			this.currentPage = totalPage;
//		}
		
	}


	public int getCurrentPage() {
		return currentPage;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public int getStartIndex() {
		return startIndex;
	}
	public int getPageSize() {
		return pageSize;
	}

	public PageUtil() {
		super();
	}
	

}
