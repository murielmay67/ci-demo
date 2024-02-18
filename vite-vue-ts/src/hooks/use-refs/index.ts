// https://gist.github.com/iamsonnn/dbf6d8407a0959f7dc66f6d24231799c

import { getCurrentInstance, reactive } from "vue"

export function useRefs<
  T extends Record<string, any>,
  R extends Record<string, any> = {
    [k in keyof T]: InstanceType<T[k]>
  },
>() {
  const instance = getCurrentInstance()
  if (!instance) {
    console.warn('useRefs() must be called within the setup() function')
  }

  const refs = reactive<R>({} as R)
  const toRef = (refName: keyof T) => (el: any) => ((refs as T)[refName as keyof T] = el)

  return {
    refs,
    toRef,
  }
}