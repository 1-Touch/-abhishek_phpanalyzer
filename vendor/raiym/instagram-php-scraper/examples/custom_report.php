<?php
require __DIR__ . '/../vendor/autoload.php';

$instagram = new \InstagramScraper\Instagram();


$user="vickykaushal09";
$source_account_data = $instagram->getAccount($user);
echo "Following: ".$source_account_data->getFollowsCount()."</br>";
// echo $source_account_data->getFollowedByCount()."</br>";
// echo $source_account_data->isPrivate()."</br>";
// echo $source_account_data->isVerified()."</br>";
    $source_account_new = new StdClass();
    $source_account_new->instagram_id = $source_account_data->getId();
    $source_account_new->username = $source_account_data->getUsername();
    $source_account_new->full_name = $source_account_data->getFullName() != '' ? $source_account_data->getFullName() : $source_account_new->username;
    $source_account_new->description = $source_account_data->getBiography();
    $source_account_new->website = $source_account_data->getExternalUrl();
    $source_account_new->followers = $source_account_data->getFollowedByCount();
    $source_account_new->following = $source_account_data->getFollowsCount();
    $source_account_new->uploads = $source_account_data->getMediaCount();
    $source_account_new->profile_picture_url = $source_account_data->getProfilePicUrl();
    $source_account_new->is_private = (int)$source_account_data->isPrivate();
    $source_account_new->is_verified = (int) $source_account_data->isVerified();
    echo "<pre>";
    print_r($source_account_new);die;