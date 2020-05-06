package com.thyme.common.base;

import lombok.Data;

/**
 * @author thyme
 * @ClassName ApiResponse
 * @Description TODO
 * @Date 2019/12/11 15:34
 */
@Data
public class ApiResponse {
    private int code;
    private String message;
    private Object data;

    public ApiResponse(int code, String message, Object data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public ApiResponse(){
        this.code = Status.SUCCESS.getCode();
        this.message = Status.SUCCESS.getStandardMessage();
    }

    public static ApiResponse ofMessage(int code,String message){
        return new ApiResponse(code,message,null);
    }

    public static ApiResponse ofSuccess(Object data){
        return new ApiResponse(Status.SUCCESS.getCode(), Status.SUCCESS.getStandardMessage(),data);
    }

    public static ApiResponse success(String message){
        return new ApiResponse(Status.SUCCESS.getCode(), message,null);
    }

    public static ApiResponse fail(String message){
        return new ApiResponse(Status.INTERNAL_SERVER_ERROR.getCode(),message,null);
    }

    public static ApiResponse ofStatus(Status status){
        return new ApiResponse(status.getCode(),status.getStandardMessage(),null);
    }

    public enum Status{
        //一些状态码的描述
        SUCCESS(200,"OK"),
        INTERNAL_SERVER_ERROR(500,"Unknown Internal Error");
        private int code;
        private String standardMessage;

        Status(int code, String standardMessage) {
            this.code = code;
            this.standardMessage = standardMessage;
        }

        public int getCode() {
            return code;
        }

        public void setCode(int code) {
            this.code = code;
        }

        public String getStandardMessage() {
            return standardMessage;
        }

        public void setStandardMessage(String standardMessage) {
            this.standardMessage = standardMessage;
        }
    }
}
