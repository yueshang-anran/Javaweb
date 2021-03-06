package com.atguigu.pojo;

import java.util.List;

/**
 * @author 书
 * @date 2021/2/20 - 10:57
 */
public class Page<T> {

    public static final Integer PAGE_SIZE = 4;

    private Integer pageNo;
    private Integer pageTotal;
    private Integer pageSize = PAGE_SIZE;
    private Integer pageTotalCount;
    private List<T> items;
    private String url;


    public void setPageNo(Integer pageNo) {
        if (pageNo < 1) {
            pageNo = 1;
        }
        if (pageNo > pageTotal) {
            pageNo = pageTotal;
        }
        this.pageNo = pageNo;
    }

    public void setPageTotal(Integer pageTotal) {
        this.pageTotal = pageTotal;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public void setPageTotalCount(Integer pageTotalCount) {
        this.pageTotalCount = pageTotalCount;
    }

    public void setItems(List<T> items) {
        this.items = items;
    }

    public void setUrl(String url) { this.url = url; }

    public Integer getPageNo() {
        return pageNo;
    }

    public Integer getPageTotal() {
        return pageTotal;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public Integer getPageTotalCount() {
        return pageTotalCount;
    }

    public List<T> getItems() {
        return items;
    }

    public String getUrl() { return url; }

    @Override
    public String toString() {
        return "Page{" +
                "pageNo=" + pageNo +
                ", pageTotal=" + pageTotal +
                ", pageSize=" + pageSize +
                ", pageTotalCount=" + pageTotalCount +
                ", items=" + items +
                ", url='" + url + '\'' +
                '}';
    }
}
