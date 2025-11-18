#!/usr/bin/env bash

gsettings set org.gnome.nautilus.compression default-compression-format 'zip'
gsettings set org.gnome.nautilus.icon-view captions "['none', 'none', 'none']"
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'small'
gsettings set org.gnome.nautilus.list-view default-column-order "['name', 'size', 'type', 'owner', 'group', 'permissions', 'mime_type', 'where', 'date_modified', 'date_modified_with_time', 'date_accessed', 'date_created', 'recency', 'starred']"
gsettings set org.gnome.nautilus.list-view default-visible-columns "['name', 'size', 'date_modified']"
gsettings set org.gnome.nautilus.list-view default-zoom-level 'medium'
gsettings set org.gnome.nautilus.list-view use-tree-view false
gsettings set org.gnome.nautilus.preferences always-use-location-entry false
gsettings set org.gnome.nautilus.preferences click-policy 'double'
gsettings set org.gnome.nautilus.preferences date-time-format 'simple'
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'list-view'
gsettings set org.gnome.nautilus.preferences default-sort-in-reverse-order false
gsettings set org.gnome.nautilus.preferences default-sort-order 'name'
gsettings set org.gnome.nautilus.preferences fts-enabled true
gsettings set org.gnome.nautilus.preferences install-mime-activation true
gsettings set org.gnome.nautilus.preferences migrated-gtk-settings true
gsettings set org.gnome.nautilus.preferences mouse-back-button 8
gsettings set org.gnome.nautilus.preferences mouse-forward-button 9
gsettings set org.gnome.nautilus.preferences mouse-use-extra-buttons true
gsettings set org.gnome.nautilus.preferences open-folder-on-dnd-hover false
gsettings set org.gnome.nautilus.preferences recursive-search 'local-only'
gsettings set org.gnome.nautilus.preferences search-filter-time-type 'last_modified'
gsettings set org.gnome.nautilus.preferences show-create-link false
gsettings set org.gnome.nautilus.preferences show-delete-permanently false
gsettings set org.gnome.nautilus.preferences show-directory-item-counts 'local-only'
gsettings set org.gnome.nautilus.preferences show-hidden-files true
gsettings set org.gnome.nautilus.preferences show-image-thumbnails 'local-only'
gsettings set org.gnome.nautilus.preferences thumbnail-limit 50
gsettings set org.gnome.nautilus.window-state initial-size "(890, 550)"
gsettings set org.gnome.nautilus.window-state maximized false
