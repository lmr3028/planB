package com.pioneer.developer.core.config;

import java.time.format.DateTimeFormatter;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.boot.autoconfigure.jackson.Jackson2ObjectMapperBuilderCustomizer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.format.FormatterRegistry;
import org.springframework.format.datetime.standard.DateTimeFormatterRegistrar;
import org.springframework.http.converter.HttpMessageConverter;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateDeserializer;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalTimeDeserializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateSerializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalDateTimeSerializer;
import com.fasterxml.jackson.datatype.jsr310.ser.LocalTimeSerializer;

@Configuration
public class WebMvcConfig implements WebMvcConfigurer {

	private static final String dateFormat = "yyyy-MM-dd";
	private static final String timeFormat = "HH:mm:ss";
	private static final String dateTimeFormat = "yyyy-MM-dd HH:mm:ss";

	@Override
	public void configureMessageConverters(List<HttpMessageConverter<?>> converters) {
		converters.add(escapingConverter());
	}

//	@Bean
//	public MappingJackson2HttpMessageConverter mappingJackson2HttpMessageConverter() {
//		ObjectMapper mapper = new ObjectMapper();
//		mapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
//		MappingJackson2HttpMessageConverter converter = new MappingJackson2HttpMessageConverter(mapper);
//		return converter;
//	}

	@Bean
	public HttpMessageConverter escapingConverter() {
		Jackson2ObjectMapperBuilder builder = new Jackson2ObjectMapperBuilder();
		builder.simpleDateFormat(dateTimeFormat);
		builder.serializers(new LocalTimeSerializer(DateTimeFormatter.ofPattern(timeFormat)));
		builder.serializers(new LocalDateSerializer(DateTimeFormatter.ofPattern(dateFormat)));
		builder.serializers(new LocalDateTimeSerializer(DateTimeFormatter.ofPattern(dateTimeFormat)));

		builder.deserializers(new LocalTimeDeserializer(DateTimeFormatter.ofPattern(timeFormat)));
		builder.deserializers(new LocalDateDeserializer(DateTimeFormatter.ofPattern(dateFormat)));
		builder.deserializers(new LocalDateTimeDeserializer(DateTimeFormatter.ofPattern(dateTimeFormat)));
		builder.featuresToDisable(SerializationFeature.FAIL_ON_EMPTY_BEANS);
		builder.featuresToDisable(DeserializationFeature.ADJUST_DATES_TO_CONTEXT_TIME_ZONE);
		builder.featuresToDisable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);

		ObjectMapper objectMapper = builder.build();
//		objectMapper.getFactory().setCharacterEscapes(new HTMLCharacterEscapes());
		MappingJackson2HttpMessageConverter escapingConverter = new MappingJackson2HttpMessageConverter();
		escapingConverter.setObjectMapper(objectMapper);

		return escapingConverter;

	}

	@Override
	public void addFormatters(FormatterRegistry registry) {
		// json
		DateTimeFormatterRegistrar registrar = new DateTimeFormatterRegistrar();

		registrar.setDateFormatter(DateTimeFormatter.ofPattern(dateFormat));
		registrar.setDateTimeFormatter(DateTimeFormatter.ofPattern(dateTimeFormat));
		registrar.registerFormatters(registry);

		/*
		 * ISO 타입. registrar.setUseIsoFormat(true);
		 * registrar.registerFormatters(registry);
		 */
	}
}
