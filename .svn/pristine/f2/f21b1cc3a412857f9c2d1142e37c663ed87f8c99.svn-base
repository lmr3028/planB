package com.pioneer.developer.core.utils;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class JsonUtils {

	private static ObjectMapper getObjectMapper() {
		ObjectMapper mapper = new ObjectMapper();
		mapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
//		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
		return mapper;
	}

	public static String toJson(Object object) {
		String json = null;

		try {
			json = getObjectMapper().writeValueAsString(object);
		} catch (JsonProcessingException e) {
//			log.error("", e);
		}

		return json;
	}

	public static <T> T fromJson(String val, Class<T> clazz){
		T object = null;

		try {
			object = getObjectMapper().readValue(val, clazz);
		} catch (IOException e) {
			log.error("", e);
		}

		return object;
	}

	public static <T> T fromJson(byte[] bytes, Class<T> clazz){
		T object = null;

		try {
			object = getObjectMapper().readValue(bytes, clazz);
		} catch (IOException e) {
			log.error("", e);
		}

		return object;
	}

	public static <T> T fromJson(String val, TypeReference<T> type){
		T object = null;

		try {
			object = getObjectMapper().readValue(val, type);
		} catch (IOException e) {
			log.error("", e);
		}

		return object;
	}

	public static <T> T bytesToJson(byte[] bytes, TypeReference<T> type){
		T object = null;

		try {
			object = getObjectMapper().readValue(bytes, type);
		} catch (IOException e) {
			log.error("", e);
		}

		return object;
	}

}

