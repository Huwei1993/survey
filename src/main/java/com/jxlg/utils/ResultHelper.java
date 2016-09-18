package com.jxlg.utils;

/**
 * 分页工具类，封装分页所需的数据，并提供泛型支持
 * 
 */
public class ResultHelper {
	private Object rows; 		// 数据集合
	private Integer results;	// 记录总数
	private Integer code; 		// 是否存在错误
	private String message;		// 结果信息

	public ResultHelper() {
		super();
	}

	public ResultHelper(Object rows, Integer results) {
		super();
		this.rows = rows;
		this.results = results;
	}

	public ResultHelper(Integer code, String message) {
		super();
		this.code = code;
		this.message = message;
	}

	public ResultHelper(Object rows, Integer results, Integer code,
			String message) {
		super();
		this.rows = rows;
		this.results = results;
		this.code = code;
		this.message = message;
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getRows() {
		return rows;
	}

	public void setRows(Object rows) {
		this.rows = rows;
	}

	public Integer getResults() {
		return results;
	}

	public void setResults(Integer results) {
		this.results = results;
	}
}
