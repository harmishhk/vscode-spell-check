'use strict' 

import * as vscode from 'vscode'; 
import SpellProvider from './Features/spellProvider';

export function activate(context: vscode.ExtensionContext) : void {
	let linter = new SpellProvider();	
	linter.activate(context);
}

