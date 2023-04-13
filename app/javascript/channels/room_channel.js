import consumer from "channels/consumer"

consumer.subscriptions.create({ channel: "RoomChannel", room: { id: 1 } }, {
  connected() {
    console.log("Connected..")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
  }
});
