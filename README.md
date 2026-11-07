# kubekontext

I don't use any of the extra features kubectx has, I just use it to switch
kubectl contexts so this is enough for me.

## Installation

You need `fzf` installed on your system, just like with kubectx.

Then, simply add this shell function to your shell's rc file (e.g. `.bashrc`,
`.zshrc`, etc...):

```sh
[...]

# Make sure NOT to add a third 'k' to this function's name
kk() {
    context=$(kubectl config get-contexts -o name | fzf)

    if [ $? -ne 0 ]; then
        echo "Invalid context name"
        return 1
    fi

    kubectl config use-context $context
}
```
