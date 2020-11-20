import React from "react";
import "./App.css";

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {};
    }
    render() {
        return (
            <div className="container">
                <div id="title-container">
                    <h1>Ceph's Citchen</h1>
                </div>
                <nav>
                    <a href="./">Home</a>
                    <a href="./">Shopping List</a>
                    <a href="./">Pantry List</a>
                    <a href="./">Recipes</a>
                    <a href="./">Unit Converter</a>
                </nav>
            </div>
        );
    }
}

export default App;
