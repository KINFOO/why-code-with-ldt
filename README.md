# Why code with LDT

# Who am I?

_Kévin KIN-FOO_, working at _Sierra Wireless_.

Working on __LDT__ from the beginning.

# The approach

* IDE or Editor
* LDT among IDEs
* What does it offer

# IDE or Editor

* I am not entering this debate
* If your read this, you are interested in IDE
* We try to keep light
* We do not aim convert editor users

# LDT among IDEs

* I am not entering this either
* This talk is not about comparison
* It is about explaining how we do things

# What does it offer

* Code formatting
* Code navigation
* Code assistance
* Debug
* Eclipse integration

# Code formatting

* It is simply an indenter
    * It is configurable
* It is available as [single project](https://github.com/LuaDevelopmentTools/luaformatter)
    * It is a _rock_

# Code formatting

* Formatter settings can be attached to a project
    * Everybody working on a project uses the good one
* Eases collaborative work

# Code navigation

* It is possible to navigate in a project more easily
    * Local variables declaration
    * Functions declaration
    * Table fields declaration

# Code assistance

* Introducing a type system
* Integrating documentation
* Embracing environments

## Type system

* Why?
* Any example?
* How is it done?

### Why?

* It just bootstraps everything
* We like ou Lua _flexible_
* _Flexible_ is hard for IDEs

### Any example?

* I have two of them:
    * _functions_
        * What do they return?
    * _tables_
        * What is the type or their fields?
        * Whick field is code assistance worthy?

### Any example?

    func = function(x)
      if x then
        return { result = 'yeah!' }
      end
      return nil, 'No `x` provided.'
    end

    -- So now, what's a good completion proposal?
    local hash = func( somevalue )
    hash.

### How is it done?

* [Documentation language](http://wiki.eclipse.org/Koneki/LDT/User_Area/Documentation_Language)
* Comment prefixed annotations
* Inference
* __Indeed__: compatible with all Lua 5.1 interpreters

### How it is done: sample

    ---
    -- @type resulttable
    -- @field #string result
    
    --- @return #resulttable
    func = function(x)
      if x then
        return { result = 'yeah!' }
      end
      return nil, 'No `x` provided.'
    end
    
    local hash = func( somevalue )
    if not hash then error('Meaningful message') end

### How is it done: shorter sample

    ---
    -- @type resulttable
    -- @field #string result
    
    func = function(x)
      if x then
        return { result = 'yeah!' }
      end
      return nil, 'No `x` provided.'
    end
    
    -- Indicating type
    local hash = func( somevalue ) -- #resulttable
    if not hash then error('Meaningful message') end

### Integrating documentation

* Describes your code
    * In a way both humans _and_ computers can understand
* Can describe:
    * Modules
    * Libraries
    * Environments

#### Enivonments?

* We came with the concept of [Execution Environment]() (EE)
    * It is the description of your application __runtime__
* Convenient for:
    * _Third party_: No need to deliver source code
    * _Frameworks_: Explain how and why of some specifics
    * _C_: When commented right, you have completion on it

#### It is open

* [LuaDocumentor](https://github.com/LuaDevelopmentTools/luadocumentor), our documentation genertator is
    * A single project
    * Available from command line
* You can [write your own EE](http://wiki.eclipse.org/Koneki/LDT/User_Area/Execution_Environment_file_format)
    * You can attach it to your project

# Debug

* Available out of the box
* Configurable
    * It is possible to have custom [display for a type](http://wiki.eclipse.org/Koneki/LDT/User_Area/Debugger/ValueDisplay)
    * It possible to [display CDATA](http://wiki.eclipse.org/Koneki/LDT/Developer_Area/User_Guides/User_Guide_1.1#Improve_cdata_display) content (LuaJIT FFI)

# Debug

Demo

# Eclipse integration

You can benefit from many Eclipse projects form LDT:

* EGit
* Mylyn
* CDT
* …

# Eclipse integration

LDT & CDT?

# Eclipse integration

Demo

# Would you use LDT?

Questions?

# Merci
