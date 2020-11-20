import React from "react";
import "./App.css";

class App extends React.Component {
    constructor(props) {
        super(props);
        this.state = {};
    }

    hideAppContainer = () => {
        let appContainer = document.getElementById("app-container");
        appContainer.className = 'hidden';
    }

    showAppContainer = () => {
        let appContainer = document.getElementById("app-container");
        appContainer.className = '';
    }

    render() {
        return (
            <div className="container">
                <div id="title-container">
                    <h1>Ceph's Citchen</h1>
                </div>
                <div id="app-container" className="hidden">

                </div>
                <nav>
                    <p href="./" onClick={this.hideAppContainer}>Home</p>
                    <p href="./" onClick={this.showAppContainer}>Shopping List</p>
                    <p href="./" onClick={this.showAppContainer}>Pantry List</p>
                    <p href="./" onClick={this.showAppContainer}>Recipes</p>
                    <p href="./" onClick={this.showAppContainer}>Unit Converter</p>
                </nav>
            </div>
        );
    }
}

export default App;
