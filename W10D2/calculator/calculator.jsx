import React from "react";

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = { result: 0, num1: "", num2: "" };
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.multiply = this.multiply.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.divide = this.divide.bind(this);
    this.reset = this.reset.bind(this);
  }

  setNum1(e) {
    this.setState({ num1: e.currentTarget.value });
  }

  setNum2(e) {
    this.setState({ num2: e.currentTarget.value });
  }

  multiply(e) {
    e.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({ result });
  }
  add(e) {
    e.preventDefault();
    const result = Number(this.state.num1) + Number(this.state.num2);
    this.setState({ result });
  }
  subtract(e) {
    e.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({ result });
  }
  divide(e) {
    e.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({ result });
  }

  reset(e){
      this.setState({ result: 0, num1: "", num2: "" });
  }

  render() {
      const { num1, num2, result} = this.state;
    return (
        <div>
        <h1>{this.state.result}</h1>
        <input onChange={this.setNum1} value={num1}></input>
        <input onChange={this.setNum2} value={num2}></input>
        <button onClick={this.reset}>Clear</button>
        <br></br>
        <button onClick={this.multiply}>*</button>
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.divide}>/</button>
      </div>
    );
  }
}

export default Calculator;
