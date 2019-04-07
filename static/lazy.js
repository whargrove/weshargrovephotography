if ('IntersectionObserver' in window &&
  'IntersectionObserverEntry' in window &&
  'intersectionRatio' in window.IntersectionObserverEntry.prototype &&
  !('isIntersecting' in IntersectionObserverEntry.prototype)) {

  Object.defineProperty(window.IntersectionObserverEntry.prototype, 'isIntersecting', {
    get: function () {
      return this.intersectionRatio > 0
    }
  })
}

let observer = new IntersectionObserver( onChange, {
  threshold: [ 0 ],
});

function onChange( changes ) {
  changes.forEach( change => {
    if ( change.isIntersecting ) {
      change.target.src = change.target.dataset.src;
      observer.unobserve( change.target );
    }
  });
}

const imgElements = [ ...document.querySelectorAll( '.lazy-load' ) ];
const createObserver = function () {
  imgElements.forEach( img => {
    observer.observe( img );
  });
};

window.addEventListener("load", () => {
    createObserver();
}, false);
