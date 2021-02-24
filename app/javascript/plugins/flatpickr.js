import flatpickr from "flatpickr";

const initFlatpickr = () => {
  flatpickr(".datepicker", {});
}

export { initFlatpickr };



// import flatpickr from 'flatpickr'

// const initFlatPickr = () => {
//   flatpickr("#range_start", {
//     inline: true,
//     plugins: [new rangePlugin({ input: "#range_end"})]
//   });
// }

// export { initFlatPickr };
