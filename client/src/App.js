import { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div style={{textAlign: 'center', marginTop: '50px'}}>
      <h1>ReactJS Demo App</h1>
      <p>Click counter:</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
      <p>Count: {count}</p>
    </div>
  );
}

export default App;
