package com.cyxz.cyshop.common;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;



@SuppressWarnings("serial")
public class PageBean<T> implements Serializable {

    /**
     * 每页显示的数据
     */
    private List<T> rows;

    /**
     * 当前显示的页码
     */
    private int pageIndex;

    /**
     * 每页显示的条数
     */
    private int pageSize;

    /**
     * 数据总条数
     */
    private long total;

    /**
     * 数据总页数
     */
    private int pages;

    /**
     * 分页条显示的个数
     */
    private int pageLinkCount = 3;

    private Map<String, Object> params = new HashMap<String, Object>();

    /**
     * 根据分页的数据条数，当前页码，每页显示的条数，数据总条数构建分页需要的数据
     *
     * @param rows      分页显示的数据
     * @param pageIndex 当前显示的页码
     * @param pageSize  每页显示的条数
     * @param total     数据总条数
     */
    public PageBean(List<T> rows, int pageIndex, int pageSize, long total) {
        super();
        this.rows = rows;
        this.pageIndex = pageIndex;
        this.pageSize = pageSize;
        this.total = total;
        this.setPages((int) Math.ceil(total / (double) pageSize));
        this.addParam("pageSize", pageSize);
    }

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    public int getPageIndex() {
        return pageIndex;
    }

    public void setPageIndex(int pageIndex) {
        this.pageIndex = pageIndex;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public int getPages() {
        return pages;
    }

    public void setPages(int pages) {
        this.pages = pages;
    }

    public int getPageLinkCount() {
        return pageLinkCount;
    }

    public void setPageLinkCount(int pageLinkCount) {
        this.pageLinkCount = pageLinkCount;
    }

    /**
     * 是否是首页
     *
     * @return
     */
    public boolean isFirst() {
        return pageIndex == 1;
    }

    /**
     * 是否是尾页
     *
     * @return
     */
    public boolean isLast() {
        return pageIndex == pages;
    }

    /**
     * 是否有上一页
     *
     * @return
     */
    public boolean isHasPrev() {
        return pageIndex > 1;
    }

    /**
     * 是否有下一页
     *
     * @return
     */
    public boolean isHasNext() {
        return pageIndex < pages;
    }

    /**
     * 获取上一页的页码
     *
     * @return
     */
    public int getPrevPage() {
        return isHasPrev() ? pageIndex - 1 : 1;
    }

    /**
     * 获取下一页的页码
     *
     * @return
     */
    public int getNextPage() {
        return isHasNext() ? pageIndex + 1 : pages;
    }

    /**
     * 获取当前显示的起始条数
     *
     * @return
     */
    public int getFrom() {
        return (pageIndex - 1) * pageSize + 1;
    }

    /**
     * 获取当前显示的结束条数
     *
     * @return
     */
    public int getTo() {
        return (pageIndex - 1) * pageSize + rows.size();
    }

    /**
     * 获得连续显示的页码
     *
     * @return
     */
    public List<Integer> getPageLinks() {
        List<Integer> links = new ArrayList<>();
        int pageLinkStart, pageLinkEnd;

        int middle = (int) Math.floor(pageLinkCount / 2.0);
        pageLinkStart = pageIndex - middle;
        if (pageLinkStart < 1) {
            pageLinkStart = 1;
        }
        pageLinkEnd = pageLinkStart + pageLinkCount - 1;
        if (pageLinkEnd > pages) {
            pageLinkEnd = pages;
        }
        if (pageLinkEnd == pages) {
            pageLinkStart = pageLinkEnd - pageLinkCount + 1;
        }
        if (pageLinkStart < 1) {
            pageLinkStart = 1;
        }

        while (pageLinkStart <= pageLinkEnd) {
            links.add(pageLinkStart);
            pageLinkStart++;
        }
        return links;
    }

    public String getUrl() {
        if (params == null || params.size() == 0) {
            return "";
        }
        StringBuilder url = new StringBuilder("?");
        for (Entry<String, Object> entry : params.entrySet()) {
            url.append(entry.getKey());
            url.append("=");
            url.append(entry.getValue());
            url.append("&");
        }
        url.delete(url.length() - 1, url.length());
        return url.toString();
    }

    public String getUrl(int pageIndex) {
        return getUrl() + "&pageIndex=" + pageIndex;
    }

    public void addParam(String name, Object value) {
        this.params.put(name, value);
    }
}
