// =============================================================================
// Import Styles - Output as: dist/css/app.css
import '../scss/app.scss';
// =============================================================================

import * as React from 'react';
import * as ReactDOM from 'react-dom';

export class Test extends React.Component<any, any> {
  constructor() {
    super();
    this.state = {
      title: 'Hello World'
    };
  }
  render(): any {
    return (
      <h1>{this.state.title}</h1>
    );
  }
}

ReactDOM.render(
  <Test></Test>,
  document.getElementById('main')
);
