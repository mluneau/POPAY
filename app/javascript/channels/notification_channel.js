import consumer from "./consumer";

const initNotificationCable = () => {
  const mainContainer = document.getElementById('main-container');
  consumer.subscriptions.create(
    {channel: "NotificationChannel"},
    {
      connected() {console.log('connected')},
      received(data) {
        mainContainer.insertAdjacentHTML('beforebegin', data);
      }
    }
    )
}

initNotificationCable();
