import { LightningElement } from "lwc";

export default class QuickCase extends LightningElement {
  subject;
  description;
  statusValue;
  originValue;
  priorityValue;

  handleChange(event) {
    let name = event.target.name;
    let val = event.target.value;
    if (name === "subject") {
      this.subject = val;
    } else if (name === "description") {
      this.description = val;
    } else if (name === "CaseStatus") {
      this.statusValue = val;
    } else if (name === "CaseOrigin") {
      this.originValue = val;
    } else if (name === "CasePriority") {
      this.priorityValue = val;
    }
  }

  get status() {
    return [
      { label: "New", value: "New" },
      { label: "Closed", value: "Closed" }
    ];
  }
  get origin() {
    return [
      { label: "Web", value: "Web" },
      { label: "Phone", value: "Phone" },
      { label: "Email", value: "Email" }
    ];
  }
  get priority() {
    return [
      { label: "High", value: "High" },
      { label: "Low", value: "Low" },
      { label: "Medium", value: "Medium" }
    ];
  }
  handleCreate() {}
}
