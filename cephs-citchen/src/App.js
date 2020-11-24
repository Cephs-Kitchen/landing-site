import React from "react";
import "./Assets/App.css";
import LinkFrame from "./LinkFrame";

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            frameSource: 'http://localhost:3002',
            frameTitle: 'testing'
        };
    }

    hideAppContainer = () => {
        let appContainer = document.getElementById("app-container");
        appContainer.className = 'hidden';
    }

    showAppContainer = (source) => {
        let appContainer = document.getElementById("app-container");
        appContainer.className = '';
        this.setState({frameSource: source})
    }

    render() {
        
        return (
            <div className="container">
                <div id="title-container">
                    <h1>Ceph's Citchen</h1>
                </div>
                <div id="app-container" className="hidden">
                    <LinkFrame source={this.state.frameSource} title={this.state.frameTitle} />
                </div>
                <nav>
                    <p onClick={this.hideAppContainer}>Home</p>
                    <p onClick={() => this.showAppContainer('http://localhost:3001')}>Shopping List</p>
                    <p onClick={() => this.showAppContainer('http://localhost:3002')}>Pantry List</p>
                    <p onClick={() => this.showAppContainer('http://localhost:3003')}>Recipes</p>
                    <p onClick={() => this.showAppContainer('http://localhost:3004')}>Unit Converter</p>
                </nav>
            </div>
        );
    }
}

export default App;
