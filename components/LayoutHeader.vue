<template>
     <header class="flex flex-row place-items-center shadow-sm h-16 lg:pl-36 lg:pr-36">
        <div id="logo" class=" text-center flex flex-none basis-2/6 items-center shrink-0 gap-3">
            <img src="/logo-ipsum.svg" alt="logo-ipsum"  srcset="" class="ml-5 h-10">
            <div class="title-site text-lg font-bold" >
                Flut Design
            </div>
        </div>
       
        <div class="basis-2/6 relative flex  justify-center shrink-1 ">
            <ul class="flex gap-x-4  w-max  ">
                <li><router-link to="/"   class="hover:text-blue-500" >Home</router-link></li>
                <li><nuxt-link to="/design"  class="hover:text-blue-500">Design</nuxt-link></li>
            </ul>
        </div>
        <div class="basis-2/6 shrink-0"></div>
    </header>
</template>