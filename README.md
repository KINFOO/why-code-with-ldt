# Why code with LDT?

# Who am I?

_Kévin KIN-FOO_, working at _Sierra Wireless_.

Working on __LDT__ since 2009.

# The approach

* IDE or Editor
* LDT among IDEs
* What does it offer

# IDE or Editor

* I am not entering this debate
* If your read this, you are interested in IDE
* We try to keep it light
* We do not aim convert editor users

# LDT among IDEs

* I am not entering this either
* This talk is not about comparison
* It is about explaining how we do things



# The real approach

* <strike>IDE or Editor
* LDT among IDEs</strike>
* What does it offer


# What does it offer

* Formatting
* Navigation
* Assistance
* Debug
* Eclipse integration

# Formatting

* It is simply an indenter
    * It is configurable
* It is available as [single project](https://github.com/LuaDevelopmentTools/luaformatter)
    * It is a _rock_

# Formatting

* Formatter settings can be attached to a project
    * Everybody working on a project uses the good one
* Eases collaborative work

# Navigation

* It is possible to navigate in a project more easily
    * Local variables declaration
    * Functions declaration
    * Table fields declaration

# Assistance

* Introducing a type system
* Integrating documentation
* Embracing environments

# Assistance

## Type system

* Why?
* Any example?
* How is it done?

# Assistance

## Type system

### Why?

* It just bootstraps everything
* It enable to focus on valuable completion
    * Minimize ackwards proposals
* We like our Lua _flexible_
* _Flexible_ is hard for IDEs

# Assistance

## Type system

### Any example?

* I have two of them:
    * _functions_
        * What do they return?
    * _tables_
        * Which field is code assistance worthy?
        * What is the type or their fields?

# Assistance

## Type system

### Any example?

    colorer = function(x)
      local t = def(x)
      t.color = '#ddd'
      return t
    end

    -- So now, what's a good completion proposal?
    local colored = colorer( somevalue )

# Assistance

## Type system

### How is it done?

* [Documentation language](http://wiki.eclipse.org/Koneki/LDT/User_Area/Documentation_Language)
* Comment prefixed annotations
* Inference
* __Indeed__: compatible with all Lua 5.1 interpreters

# Assistance

## Type system

### How it is done: sample

    ---
    -- @type coloredtable
    -- @field #string result
    
    --- @return #coloredtable
    colorer = function(x)
      local t = def(x)
      t.color = '#ddd'
      return t
    end

    -- Now we know
    local colored = colorer( somevalue )

# Assistance

## Type system

### How is it done: another sample

    ---
    -- @type coloredtable
    -- @field #string result
    
    colorer = function(x)
      local t = def(x)
      t.color = '#ddd'
      return t
    end
    
    local colored = colorer( somevalue ) -- #coloredtable

# Assistance

## Type system

### Integrating documentation

* Describes your code
    * In a way both humans _and_ computers can understand
* Can describe:
    * Modules
    * Libraries
    * Environments

# Assistance

## Type system

### Integrating documentation

#### Environments?

* We came with the concept of [Execution Environment](http://wiki.eclipse.org/Koneki/LDT/User_Area/Execution_Environment_file_format#Execution_Environment) (EE)
    * It is the description of your application __runtime__
* Convenient for:
    * _Third party_: No need to deliver source code
    * _Frameworks_: Explain how and why of some specifics
    * _C_: When commented right, you have completion on it

# Assistance

## Type system

### Integrating documentation

#### It is open

* [LuaDocumentor](https://github.com/LuaDevelopmentTools/luadocumentor), our documentation generator is
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
