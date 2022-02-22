<template>
  <header
    class="flex flex-row place-items-center shadow-sm h-16 lg:pl-36 lg:pr-36"
  >
    <div
      id="logo"
      class="text-center flex flex-none basis-2/6 items-center shrink-0 gap-3"
    >
      <img src="/logo-ipsum.svg" alt="logo-ipsum" srcset="" class="ml-5 h-10" />
      <div class="title-site text-lg font-bold">Flut Design</div>
    </div>

    <div class="basis-2/6 relative flex justify-center shrink-1">
      <ul class="flex gap-x-4 w-max">
        <li>
          <router-link to="/" class="hover-blue">Home</router-link>
        </li>
        <li>
          <nuxt-link to="/design" class="hover-blue">Design</nuxt-link>
        </li>
      </ul>
    </div>
    <div class="basis-1/6 shrink-0 flex justify-evenly items-center">
    <div class="max-w-fit pt-1 pb-1 pl-2 pr-2 border rounded">v 0.0.1</div>
      <a class="block max-h-fit p-0" href="http://vcs.dev.n18.an.cnav/scn/design-22" target="_blank">
        <ui-icones-git-logo class="w-5 ml-auto hover-blue" />
      </a>
    </div>
  </header>
</template>
