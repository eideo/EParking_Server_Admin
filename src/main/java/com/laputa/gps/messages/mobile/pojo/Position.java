package com.laputa.gps.messages.mobile.pojo;

import com.laputa.gps.messages.AM;
import com.laputa.gps.messages.mobile.proto.Message;
import com.laputa.gps.messages.mobile.proto.PositionMessage;

public class Position extends APMesg {
    private float accuracy;
    private double altitude;
    private double latitude;
    private double longitude;
    private float speed;
    private float bearing;
    private long creationTime;

    public long getCreationTime() {
        return creationTime;
    }

    public void setCreationTime(long creationTime) {
        this.creationTime = creationTime;
    }

    public Position(AM am) {
        super(am);
        setLen(44);
    }

/*    @Override
    public void readExternal(ObjectInput arg0) throws IOException,
            ClassNotFoundException {
        setAccuracy(arg0.readFloat());
        setAltitude(arg0.readDouble());
        setLatitude(arg0.readDouble());
        setLongitude(arg0.readDouble());
        setSpeed(arg0.readFloat());
        setBearing(arg0.readFloat());
        setCreationTime(arg0.readLong());

    }

    @Override
    public void writeExternal(ObjectOutput arg0) throws IOException {

        arg0.writeFloat(getAccuracy());
        arg0.writeDouble(getAltitude());
        arg0.writeDouble(getLatitude());
        arg0.writeDouble(getLongitude());
        arg0.writeFloat(getSpeed());
        arg0.writeFloat(getBearing());
        arg0.writeLong(getCreationTime());

    }*/

    @Override
    public PositionMessage toMessage() {
        return new PositionMessage(this);
    }

    public float getAccuracy() {
        return accuracy;
    }

    public void setAccuracy(float accuracy) {
        this.accuracy = accuracy;
    }

    public double getAltitude() {
        return altitude;
    }

    public void setAltitude(double altitude) {
        this.altitude = altitude;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    public float getSpeed() {
        return speed;
    }

    public void setSpeed(float speed) {
        this.speed = speed;
    }

    public float getBearing() {
        return bearing;
    }

    public void setBearing(float bearing) {
        this.bearing = bearing;
    }
}
