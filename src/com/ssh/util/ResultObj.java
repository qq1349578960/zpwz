package com.ssh.util;
/**
 * 执行结果
 */
public class ResultObj {
	/**
	 * 返回信息
	 */
	private String msg;
	/**
	 * 结果(0-成功 ，1失败)
	 */
	private String result;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
}
