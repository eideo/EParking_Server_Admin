package com.laputa.gps.messages.mobile.proto;

import com.laputa.gps.messages.AM;
import com.laputa.gps.messages.mobile.pojo.Settings;


import java.nio.ByteBuffer;

public class SettingsMessage extends Message {

	public SettingsMessage(ByteBuffer buffer, int len, int code, int requestId) {
		super(buffer, len, code, requestId);
	}

	public SettingsMessage(AM am) {
		super(am);
		Settings a = (Settings) am;
		buffer = ByteBuffer.allocate(getLen());
		buffer.putFloat(a.getGpsMinChangeDistance());
		buffer.putLong(a.getGpsMinInterval());
		buffer.putInt(a.getSocketConnectionTimeOut());
		buffer.putInt(a.getServerPort());
		buffer.put(a.getServerAddress().getBytes());
	}

	@Override
	public Settings toPojo() {
		Settings res = new Settings(this);

		res.setGpsMinChangeDistance(buffer.getFloat());
		res.setGpsMinInterval(buffer.getLong());
		res.setSocketConnectionTimeOut(buffer.getInt());
		res.setServerPort(buffer.getInt());
		byte[] b = new byte[buffer.remaining()];
		buffer.get(b);
		res.setServerAddress(new String(b));
		return res;
	}

}
