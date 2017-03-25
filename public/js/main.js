var pledgeItem =
  '<ul class="pledge-item"> \
      <li class="team"> \
        <div class="dropdown"> \
            <button onclick="dropdownMenu()" class="dropbtn">Team</button> \
            <div id="myDropdown" class="dropdown-content"> \
                <a href="#">Link 1</a> \
                <a href="#">Link 2</a> \
                <a href="#">Link 3</a> \
            </div> \
        </div> \
      </li> \
      <li class="player"> \
        <div class="dropdown"> \
            <button onclick="dropdownMenu()" class="dropbtn">Player</button> \
            <div id="myDropdown" class="dropdown-content"> \
                <a href="#">Link 1</a> \
                <a href="#">Link 2</a> \
                <a href="#">Link 3</a> \
            </div> \
        </div> \
      </li> \
      <li class="stat"> \
        <div class="dropdown"> \
            <button onclick="dropdownMenu()" class="dropbtn">Stat</button> \
            <div id="myDropdown" class="dropdown-content"> \
                <a href="#">Link 1</a> \
                <a href="#">Link 2</a> \
                <a href="#">Link 3</a> \
            </div> \
        </div> \
      </li> \
      <li class="dollars"><input type="text" placeholder="$$$" size="5"></input></li> \
      <li class="charity"><input type="text" placeholder="Charity" size="5"></input></li> \
      <li class="add-pledge"><button class="addpledge-button">Add Pledge!</button></li> \
  </ul>';

$('.delete-button').on('click', function() {
  $('.pledge-item').remove();
});

$('.pledge-button').on('click', function() {
  $('.pledge-list').prepend(pledgeItem);
});

/* When the user clicks on the button,
toggle between hiding and showing the dropdown content */
function dropdownTeam() {
    document.getElementById('myDropdown-team').classList.toggle('show');
}

$('.team-name').on('click', function() {
  var selected = $(this)[0].id
  $('.team-button').html(selected)
});

function dropdownPlayer() {
    document.getElementById('myDropdown-player').classList.toggle('show');
}

function dropdownStat() {
    document.getElementById('myDropdown-stat').classList.toggle('show');
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {

    var dropdowns = document.getElementsByClassName('dropdown-content');
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
