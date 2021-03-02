import consumer from "./consumer";

const initNotificationCable = () => {

  consumer.subscriptions.create({channel: "NotificationChannel", id: 24})
}

export { initNotificationCable }
