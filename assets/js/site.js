const toggle = document.querySelector('.menu-toggle');
const nav = document.querySelector('.site-nav');
if (toggle && nav) {
  toggle.addEventListener('click', () => {
    const open = toggle.getAttribute('aria-expanded') !== 'true';
    toggle.setAttribute('aria-expanded', String(open));
    nav.classList.toggle('is-open', open);
    toggle.querySelector('span').textContent = open ? '−' : '+';
  });
  document.addEventListener('keydown', event => {
    if (event.key === 'Escape' && toggle.getAttribute('aria-expanded') === 'true') {
      toggle.click(); toggle.focus();
    }
  });
}
const current = document.querySelector('.nav-' + document.body.dataset.page);
if (current) current.setAttribute('aria-current', 'page');

document.querySelectorAll('.research-tabs').forEach(tabs => {
  const links = [...tabs.querySelectorAll('a[href^="#"]')];
  const panels = links.map(link => document.getElementById(link.hash.slice(1)));
  if (panels.some(panel => !panel)) return;
  tabs.setAttribute('role', 'tablist');
  links.forEach((link, i) => {
    link.setAttribute('role', 'tab');
    link.setAttribute('aria-controls', panels[i].id);
    panels[i].setAttribute('role', 'tabpanel');
    panels[i].tabIndex = 0;
  });
  function activate(index, updateUrl = false) {
    links.forEach((link, i) => {
      link.setAttribute('aria-selected', String(i === index));
      link.tabIndex = i === index ? 0 : -1;
      panels[i].hidden = i !== index;
    });
    if (updateUrl && location.hash !== links[index].hash) history.pushState(null, '', links[index].hash);
  }
  const fromHash = () => Math.max(0, links.findIndex(link => link.hash === location.hash));
  activate(fromHash());
  links.forEach((link, i) => {
    link.addEventListener('click', event => { event.preventDefault(); activate(i, true); });
    link.addEventListener('keydown', event => {
      let next;
      if (event.key === 'ArrowRight') next = (i + 1) % links.length;
      if (event.key === 'ArrowLeft') next = (i - 1 + links.length) % links.length;
      if (event.key === 'Home') next = 0;
      if (event.key === 'End') next = links.length - 1;
      if (next === undefined) return;
      event.preventDefault(); activate(next, true); links[next].focus();
    });
  });
  window.addEventListener('popstate', () => activate(fromHash()));
  window.addEventListener('hashchange', () => activate(fromHash()));
});
