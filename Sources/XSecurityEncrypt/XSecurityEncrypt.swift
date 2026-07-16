// The Swift Programming Language
// https://docs.swift.org/swift-book

import XSecurity

@objc
public class XSecurityTool: NSObject {
    /// 加密
    /// - Parameters:
    ///   - plainText: 需要加密的请求参数（如 JSON 字符串）
    ///   - dynamicSalt: 动态盐
    /// - Returns: 返回 Base64 编码的密文、Nonce、Tag 的组合，若失败返回 空字符串
    @objc public static func encryptPlainText(_ plainText: String, dynamicSalt: String) -> [String:String] {
        return XSecurityUtil.encryptPlainText(plainText, dynamicSalt: dynamicSalt)
    }
    
    /// 加密
    /// - Parameters:
    ///   - plainText: 需要加密的请求参数（如 JSON 字符串）
    ///   - dynamicSalt: 动态盐
    /// - Returns: 返回 Base64 编码的密文、Nonce、Tag 的组合，若失败返回空字符
    public static func encrypt(plainText: String, dynamicSalt: String) -> (ciphertext: String, nonce: String, tag: String) {
        return XSecurityUtil.encrypt(plainText: plainText, dynamicSalt: dynamicSalt)
    }
    
    /// 解密
    /// - Parameters:
    ///   - ciphertext: 密文 (Base64)
    ///   - nonceStr: 初始化向量 (Base64)
    ///   - tagStr: 认证标签 (Base64)
    ///   - dynamicSalt: 动态盐
    /// - Returns: 解密后的明文data
    @objc public static func decrypt(ciphertext: String, nonceStr: String, tagStr: String, dynamicSalt: String) -> Data? {
        return XSecurityUtil.decrypt(ciphertext: ciphertext, nonceStr: nonceStr, tagStr: tagStr, dynamicSalt: dynamicSalt)
    }
    
    /// 解密
    /// - Parameters:
    ///   - ciphertext: 密文 (Base64)
    ///   - nonceStr: 初始化向量 (Base64)
    ///   - tagStr: 认证标签 (Base64)
    ///   - dynamicSalt: 动态盐
    /// - Returns: 解密后的明文字符串
    @objc public static func decryptString(ciphertext: String, nonceStr: String, tagStr: String, dynamicSalt: String) -> String? {
        return XSecurityUtil.decryptString(ciphertext: ciphertext, nonceStr: nonceStr, tagStr: tagStr, dynamicSalt: dynamicSalt)
    }
}
