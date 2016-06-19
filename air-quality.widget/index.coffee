command: 'curl -s "http://feed.aqicn.org/feed/Hangzhou/cn/feed.v1.json"'

refreshFrequency: 600000

render: (output) -> """
       <div>
        <span id='aqi'></span>
        <span id='impact'></span>
		</div>
"""

update: (output) ->
  if(!output)
    return
  data = JSON.parse(output)
	
  $('#city').text data.city.name 

  $('#aqi').text data.aqi.val 

  $('#impact').text data.aqi.impact 


style: """
    left: 635px
    top: 272px
    color: #ccc

	#city
		font-weight: 300

	#aqi	
		font-size: 18px
	#impact 
		font-size: 12px		
"""