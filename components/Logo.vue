<template>
    <div>
        <img v-if="$colorMode.value === 'light'" width="120" src="/img/sensa_logo_v2.svg" />
        <img v-if="$colorMode.value === 'dark'" width="120" src="/img/sensa_logo_wh_v2.svg" />
    </div>
</template>

<script setup>
const colorMode = useColorMode()
</script>