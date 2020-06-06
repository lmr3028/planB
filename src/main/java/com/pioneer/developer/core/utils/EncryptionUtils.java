package com.pioneer.developer.core.utils;

import java.nio.charset.StandardCharsets;

import com.google.common.hash.Hashing;

public class EncryptionUtils {

	public static String toSha256Hex(String originalString) {

		String sha256hex = Hashing.sha256()
				  .hashString(originalString, StandardCharsets.UTF_8)
				  .toString();

		return sha256hex;
	}

}
