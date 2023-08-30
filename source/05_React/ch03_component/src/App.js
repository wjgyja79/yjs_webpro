import './App.css';
import { Component } from 'react';

class App extends Component{
  render(){
    return (
      <div>
        Hello, React!!!
        <Subject></Subject>
      </div>
    );
  }
}
class Subject extends Component{
  render(){
    return(
      <header>
        <h1>react</h1>
        World Wide Web! {/* 주석 */}
      </header>
    );
  }
}
export default App;
