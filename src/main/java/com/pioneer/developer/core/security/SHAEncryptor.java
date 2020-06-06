package com.pioneer.developer.core.security;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.springframework.security.crypto.password.PasswordEncoder;

public class SHAEncryptor implements PasswordEncoder {

	private static final String DEFAULT_ALGORITHM = "SHA-256";

	private static final String DEFAULT_SALT = "PLANB_SALT_VALUE";

	public static String encrypt(String val){
		return encrypt(val, DEFAULT_ALGORITHM, null);
	}

	public static String encrypt(String val, String algorithm, byte[] salt){
		return getSecureString(val, algorithm, salt);
	}

	private static String getSecureString(String val, String algorithm, byte[] salt) {
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance(algorithm);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		if (salt != null) md.update(salt);
		byte[] bytes = md.digest(val.getBytes());

		StringBuffer sb = new StringBuffer();

		for (int i=0; i<bytes.length; i++) {
			sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		}

		return sb.toString();
	}

	public static byte[] genSaltAndValue(byte[] value) {
		byte[] salt = DEFAULT_SALT.getBytes();

		byte[] combined = new byte[salt.length + value.length];

		System.arraycopy(salt, 0, combined, 0, salt.length);
		System.arraycopy(value, 0, combined, salt.length, value.length);

		return combined;
	}

	@Override
	public String encode(CharSequence rawPassword) {
		return encrypt(rawPassword.toString());
	}

	@Override
	public boolean matches(CharSequence rawPassword, String encodedPassword) {
		return encrypt(rawPassword.toString()).equals(encodedPassword);
	}

}
