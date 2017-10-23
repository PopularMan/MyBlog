package com.ssm.util;
/**
 * success 代表成功 失败 true /fasle 
 * message 消息
 * T泛型 数据
 * 
 * @author 张超超
 *
 */
public class ResponseResult<T> {
	    private boolean success;  
	    private String message;  
	    private T data;  
	    private String errorcode;
		public boolean isSuccess() {
			return success;
		}
		public void setSuccess(boolean success) {
			this.success = success;
		}
		public String getMessage() {
			return message;
		}
		public void setMessage(String message) {
			this.message = message;
		}
		public T getData() {
			return data;
		}
		public void setData(T data) {
			this.data = data;
		}
		public String getErrorcode() {
			return errorcode;
		}
		public void setErrorcode(String errorcode) {
			this.errorcode = errorcode;
		}  
	    
}
