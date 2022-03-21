echo "Flavors"

create() {
     # Parse parrams for function
     while [ $# -gt 1 ]; do
     case "$2" in
          -i|--bundleId)
          bundleId="$3"
          ;;
          -n|--name)
          name="$3"
          ;;
          -f|--flavor)
          flavor="$3"
          ;;
     *)
          printf "Avaivalbe arguments (only for android) \n"
          printf "   -f | --flavor *- Flavor name \n"
          printf "   -i | --bundleId - Flavor bundle Id \n"
          printf "   -n | --name - Flavor project name \n"
          exit 1
     esac
     shift
     shift
     done

     # Exit if [flavor] was null
     if [[ -z "$flavor" ]]; then
          printf "Flavor was null! Use this requared param."
          exit 1
     fi

     printf "Creating flavor $flavor...\n\n"
     printf "Flavor params:\n"
     printf "  flavorName* - $flavor\n"
     printf "  appName     - $name\n"
     printf "  bundleId    - $bundleId\n\n"

     str=""

     cd android/app/
     # cat build.gradle
     # sudo sed -i "" "H;1h;\$!d;x;s|productFlavors {.*}|productFlavors {}//|g" build.gradle
     # cat build.gradle

     start="// Develop Start"
     end="// Develop End"
     # a=$(sudo sed -i "" "s|$start.*$end|g" build.gradle)
     # grep -o -P '(?<=$start: ).*(?=$end)' build.gradle
     a=$(sed "" "H;1h;x;s|$start.*$end||p" build.gradle)
     
     # echo "Hello world // Develop Start this is a file // Develop End" | sed 's|.*$start \(.*\)$end|\1|'
     # sudo sed -i "" "H;1h;\$!d;x;s|${enterComment}.*${closerComment}||g" $alias_target_file
     echo $a

     # Update bundleId for Android falvor
     if ! [[ -z "$bundleId" ]]; then
         str=str+'applicationId: "$bundleId"'
     else 
          printf "Bundle ID is null\n"
     fi

     # Update AppName for Android flavor
     if ! [[ -z "$name" ]]; then
          printf "App Name is $name\n"
     else 
          printf "App Name is null\n"
     fi
}

update() {
     printf "In Update"
}

delete() {
     printf "In Delete"
}

if [ $1 == "create" ]; then
     printf "Creating new flavor...\n"
     create $*
     exit 1

elif [ $1 == "update" ]; then
     printf "Updating flavor...\n"
     update $*
     exit 1

elif [ $1 == "delete" ]; then
     printf "Deleting flavor...\n"
     delete $*
     exit 1

else
     printf "Avaivalbe commands:\n"
     printf "  create - Create new flavor \n"
     printf "  update - Update flavor \n"
     printf "  delete - Remove flavor \n"
     exit 1
fi

# sh("perl -pi -e 's/#{ENV["BASE_BUNDLE_ID"]}/#{ENV["BUNDLE_ID"]}/g' ../app/build.gradle")
# sh("perl -pi -e 's/#{ENV["BASE_BUNDLE_ID"]}/#{ENV["BUNDLE_ID"]}/g' ../app/src/main/AndroidManifest.xml")
# sh("perl -pi -e 's/#{ENV["BASE_BUNDLE_ID"]}/#{ENV["BUNDLE_ID"]}/g' ../app/src/debug/AndroidManifest.xml")
