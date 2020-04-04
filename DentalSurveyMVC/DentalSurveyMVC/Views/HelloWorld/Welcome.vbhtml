@Code
    ViewBag.Title = "Welcome"
End Code

<h2>Welcome</h2>

<ul>
       @For i = 1 To ViewBag.numTimes
           @<li>@ViewBag.Message</li>
       Next
</ul>
