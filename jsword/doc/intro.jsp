<%@ page %>

<html>
<head>
  <title>JSword - Aims</title>
  <meta name="keywords" content="bible, free, software, christian, study, gpl, bible software,">
  <meta http-equiv="keywords" content="bible, free, software, christian, study, gpl, bible software,">
  <meta name="distribution" content="global">
  <link rel="stylesheet" href="sword.css" type="text/css">
</head>

<body>

<%@ include file="header.jsp" %>

            <h2>Aims</h2>

            <ul>
              <li>JSword should be a Bible study library with which to build various 
                front-ends. Front-ends could include Applets, stand-alone Swing/AWT/SWT 
                GUIs, server-side processing for JSP/Servlets, and more advanced projects 
                like link mappers and translations.
              <li>It should help Bible study through various optional front-ends that 
                are shipped with JSword or separately. 
              <li>It should be easliy contributed-to, and easily used.
            </ul>

            <p>This is a list of the people that have contributed code to this project. 
              It would be good to make this list auto-generated from the author tags 
              of the source.</p>
            <ul>
              <li>Joe Walker
              <li>Keith Ralston</li>
              <li>Mark Goodwin</li>
            </ul>

            <h2>Coding Recommendations</h2>

            <h4>JDK Versions</h4>
            <p>This is all currently being written using JDK 1.3+</p>

            <h4>Coding Standards</h4>
            <p>The coding standards used on this project so far are very much based 
              on the SUN coding standards. This is some notes on style we are using, 
              some of this deviates from the SUN standard, and some is just extensions 
              to it.</p>

            <h5>Packaging</h5>
            <p>There is a split between classes that are specific to this project and those that 
              could be usefully employed elsewhere. Generally we should:
            <ul>
              <li>Make a much code general as possible</li>
              <li>Only generalize where there is a point - specifically and code that 
                does something Bible specific should not be general</li>
              <li>Never import specific code in generalized code</li>
            </ul>
			<p> Generalized code exists in <code>org.crosswire</code>. Code specific 
              to this project lives in <code>org.crosswire.jsword</code>.</p>

            <p>Also, since there is an MVC relationship between various parts of the code we avoid 
              importing <code>org.crosswire.jsword.view.*</code> in any other code, 
              and avoid importing <code>org.crosswire.jsword.control.*</code> in anything 
              but <code>org.crosswire.jsword.view.*</code></p>

            <p>Also any code specific to an interface X should be in a package containing x. For 
              example all swing specific code is in a *swing* package. This helps 
              us in packaging code for a distribution, in excluding other interfaces.</p>

            <h5>Bracket Indentation</h5>
            <p>The "Sun Way" conserves screen space at the expense of readibility 
              - which given the cost of decent size monitors these days seems silly. 
              A lot of Java code, seems to ignore Sun and do it this way:<br>
              <code>if (something)<br>
              {<br>
              &nbsp;&nbsp;&nbsp;&nbsp;func();<br>
              }</code></p>

            <h5>Variable Naming</h5>
            <p>Sun recommend using the same convention as for method names. This does 
              confuse method names and variable names. So the suggested use for this 
              project is all lower case names with optional underscores between words. 
              For example <code>word_count</code> or <code>wordcount</code> and not 
              <code>wordCount</code>. The Sun method makes some sense if you intend 
              to use public member variables, however that is generally not recommended 
              behavior.</p>

            <h5>Class Ordering</h5>
            <p>Variables are not important members of a class so why put them at the top? JSword 
              usage puts them at the bottom.</p>

            <h5>Tabbing</h5>
            <p>4 space indents are a Good Thing, however using a tab character instead of 4 spaces 
              just causes problems when you want to print, open in a different editor, 
              or want to paste into an html doc using &lt;pre&gt; tags. Everything 
              will look exactly the same if you use spaces instead of tabs.</p>

            <h5>Preamble</h5>
            <p>All java source should have the following at the end of the class JavaDoc</p>

<pre>
 * &lt;p>&lt;table border='1' cellPadding='3' cellSpacing='0'>
 * &lt;tr>&lt;td bgColor='white' class='TableRowColor'>&lt;font size='-7'>
 * Distribution Licence:&lt;br />
 *
 * JSword is free software; you can redistribute it
 * and/or modify it under the terms of the GNU General Public License,
 * version 2 as published by the Free Software Foundation.&lt;br />
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.&lt;br />
 * The License is available on the internet
 * &lt;a href='http://www.gnu.org/copyleft/gpl.html'>here&lt;/a>, or by writing to:
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
 * MA 02111-1307, USA&lt;br />
 * The copyright to this program is held by it's authors.
 * &lt;/font>&lt;/td>&lt;/tr>&lt;/table>
 * @see docs.Licence
 * @author Joe Walker [joe at eireneh dot com]
 * @version $Id$
</pre>

            <p>If you look in the source to this page there is a commented out section to cut 
              and paste just below this note.</p>
<!--
 * <p><table border='1' cellPadding='3' cellSpacing='0'>
 * <tr><td bgColor='white' class='TableRowColor'><font size='-7'>
 *
 * Distribution Licence:<br />
 * JSword is free software; you can redistribute it
 * and/or modify it under the terms of the GNU General Public License,
 * version 2 as published by the Free Software Foundation.<br />
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License for more details.<br />
 * The License is available on the internet
 * <a href='http://www.gnu.org/copyleft/gpl.html'>here</a>, or by writing to:
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
 * MA 02111-1307, USA<br />
 * The copyright to this program is held by it's authors.
 * </font></td></tr></table>
 * @see docs.Licence
 * @author Joe Walker [joe at eireneh dot com]
 * @version $Id$
-->

            <p>The result looks something like this from JavaDoc:</p>

<p><table border='1' cellpadding='3' cellspacing='0'>
<tr><td bgcolor='white' class='TableRowColor'><font size='-7'>
Distribution Licence:<br />
JSword is free software; you can redistribute it
and/or modify it under the terms of the GNU General Public License,
version 2 as published by the Free Software Foundation.<br />
This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
General Public License for more details.<br />
The License is available on the internet
<a href='http://www.gnu.org/copyleft/gpl.html'>here</a>, or by writing to:
Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston,
MA 02111-1307, USA<br />
The copyright to this program is held by it's authors.
</font></td></tr></table>

<%@ include file="footer.jsp" %>

</body>
</html>