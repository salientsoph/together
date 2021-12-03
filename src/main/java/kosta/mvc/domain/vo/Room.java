package kosta.mvc.domain.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class Room {
	private int roomNumber;
	private String roomName;
	
	/*
	public int getRoomNumber() {
		return roomNumber;
	}
	public void setRoomNumber(int roomNumber) {
		this.roomNumber = roomNumber;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	
	@Override
	public String toString() {
		return "Room [roomNumber=" + roomNumber + ", roomName=" + roomName + "]";
	}	
	*/
}