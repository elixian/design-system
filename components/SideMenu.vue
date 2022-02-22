<template>

    <aside class="bg-gradient-to-t from-slate-200">
      <div class="content-nav">
        <nav>
          <ul class="side-menu">
              <li class="">
              <div class="sub-menu_title"   >
                <NuxtLink
                  to="/design/"
                  class="block h-full w-full outline-none"
                  >Accueil</NuxtLink
                >
              </div>

            </li>
            <li class="">
              <!-- <div class="sub-menu_title" @click.prevent="activeSubmenu($event)"> -->
              <div class="sub-menu_title" >
                <NuxtLink
                  to="/design/button"
                  class="block h-full w-full outline-none"
                  >Boutons</NuxtLink
                >
              </div>
              <!-- <ul class="sub-menu hidden flex-col">
                <li class="sub-menu_items ml-3"></li>
                <li class="sub-menu_items ml-3"></li>
              </ul> -->
            </li>
            <li class="sub-menu_title">Box</li>
            <li class="sub-menu_title">Parapgraphes</li>
            <li class="sub-menu_title">Heading</li>
          </ul>
        </nav>
      </div>
    </aside>

</template>

<style scoped lang="scss">
.sub-menu_title {
  @apply pl-3  leading-10 bg-transparent transition duration-300  hover:text-blue-500 hover:shadow-sm hover:bg-white transform cursor-pointer;

  &.active {
    @apply bg-red-200;

    & + .sub-menu {
      display: flex;
    }
  }
}

.sub-menu_items {
  @apply pl-3  leading-10 bg-transparent transition duration-300  hover:text-red-500 transform cursor-pointer;
}
</style>
