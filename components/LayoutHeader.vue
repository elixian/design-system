<template>
     <header class="flex flex-row place-items-center shadow-sm h-16">
        <div id="logo" class="basis-1/6  text-center flex items-center gap-3">
            <img src="/logo-ipsum.svg" alt="logo-ipsum"  srcset="" class="ml-5 h-10">
            <div class="title-site" >
                Flut Design
            </div>
        </div>
        <div class="search-content basis-2/6">
        <div class="search-box ml-10">
            <input type="text" placeholder="Search" class="border h-10 rounded-sm p-3" >
        </div>
            
        </div>
       
        <div class="basis-3/6">
            <ul class="flex gap-x-2  w-max  ">
                <li><router-link to="/"   class="hover:text-yellow-600" >Home</router-link></li>
                <li><nuxt-link to="/design"  class="hover:text-yellow-600">Design</nuxt-link></li>
            </ul>
        </div>
    </header>
</template>