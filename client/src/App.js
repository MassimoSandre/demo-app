import { useState } from 'react';
import './App.css';

function App() {
  const [count, setCount] = useState(0);

  return (
    <div style={{textAlign: 'center', marginTop: '50px'}}>
      <h1>Massimo's Click counter:</h1>
      <p>Click counter:</p>
      <button onClick={() => setCount(count + 1)}>Increment</button>
      <p>Count: {count}</p>
      <p style={{fontSize: '12px', color: 'gray'}}>by Massimo Sandretti</p>
    </div>
  );
}

export default App;
