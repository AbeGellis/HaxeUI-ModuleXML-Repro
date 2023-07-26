let project = new Project('New Project');
project.addAssets('Assets/**');
project.addShaders('Shaders/**');
project.addLibrary('haxeui-core');
await project.addProject("Libraries/haxeui-kha");
project.addSources('Sources');
resolve(project);
