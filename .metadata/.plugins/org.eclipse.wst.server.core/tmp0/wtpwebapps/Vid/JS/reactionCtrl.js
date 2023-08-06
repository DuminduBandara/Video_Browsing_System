//control reactions  		
  		let likeBtn = document.querySelector(".likeBtn");
  		let likeIcon = likeBtn.querySelector(".bi-hand-thumbs-up");
  		let dislikeBtn = document.querySelector(".dislikeBtn");
  		let dislikeIcon = dislikeBtn.querySelector(".bi-hand-thumbs-down");
  		let likeCount = document.getElementById("likeCount");
  		let dislikeCount = document.getElementById("dislikeCount");
  		
  		likeBtn.onclick = function(){
  			if(likeIcon.classList.contains("bi-hand-thumbs-up")){
  				likeIcon.classList.replace("bi-hand-thumbs-up", "bi-hand-thumbs-up-fill");
  				likeCount.textContent = Number(likeCount.innerHTML) + 1;
  				
  				if(dislikeIcon.classList.contains("bi-hand-thumbs-down-fill")){
  					dislikeIcon.classList.replace("bi-hand-thumbs-down-fill", "bi-hand-thumbs-down");
  					dislikeCount.textContent = Number(dislikeCount.innerHTML) - 1;
  				}
  			}
  			else{
  				likeIcon.classList.replace("bi-hand-thumbs-up-fill", "bi-hand-thumbs-up");
  				likeCount.textContent = Number(likeCount.innerHTML) - 1 ;
  			}
  		}
  		
  		dislikeBtn.onclick = function(){
  			if(dislikeIcon.classList.contains("bi-hand-thumbs-down")){
  				dislikeIcon.classList.replace("bi-hand-thumbs-down", "bi-hand-thumbs-down-fill");
  				dislikeCount.textContent = Number(dislikeCount.innerHTML) + 1;
  				
  				if(likeIcon.classList.contains("bi-hand-thumbs-up-fill")){
  					likeIcon.classList.replace("bi-hand-thumbs-up-fill", "bi-hand-thumbs-up");
  					likeCount.textContent = Number(likeCount.innerHTML) - 1 ;
  				}
  			}
  			else{
  				dislikeIcon.classList.replace("bi-hand-thumbs-down-fill", "bi-hand-thumbs-down");
  				dislikeCount.textContent = Number(dislikeCount.innerHTML) - 1;
  			}
  		}