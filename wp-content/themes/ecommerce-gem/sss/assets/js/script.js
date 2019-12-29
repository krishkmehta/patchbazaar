var $fileupload
jQuery(document).ready(function () {
    'use strict';

    // Initialize the jQuery File Upload widget:
    $fileupload = jQuery('#fileupload').fileupload({
        url: jQuery("#fileupload").data('url'),
        add: function (e, data) {
            jQuery("#upload-msg").html('');
            if (e.isDefaultPrevented()) {
                return false;
            }
            jQuery(".icon_photos_delete").each(function () {
                var obj = jQuery(this);
                jQuery.ajax({
                    method: 'DELETE',
                    // Uncomment the following to send cross-domain cookies:
                    //  xhrFields: {withCredentials: true},
                    url: jQuery(this).data('url'),

                    dataType: 'json'

                }).always(function () {

                }).done(function (result) {

                    jQuery(obj).parents('.template-download').remove();
                });
            })
            data.process().done(function () {
                data.submit();
            });
        },
        limitConcurrentUploads: 1,
        prependFiles: true,
        autoUpload: false,
        singleFileUploads: true,
        sequentialUploads: true,
        imageCrop: false // Force cropped images

    });

    jQuery(document).on('click', '.icon_photos_delete', function (e) {/* ... */

        e.preventDefault();
        var obj = jQuery(this);
        jQuery.ajax({
            method: 'DELETE',
            // Uncomment the following to send cross-domain cookies:
            //  xhrFields: {withCredentials: true},
            url: jQuery(this).data('url'),
            dataType: 'json'

        }).always(function () {

        }).done(function (result) {

            jQuery(obj).parents('.template-download').remove();

            jQuery.ajax({
                // Uncomment the following to send cross-domain cookies:
                xhrFields: {withCredentials: true},
                url: jQuery('#fileupload').fileupload('option', 'url'),
                data: {action: "sss_upload_image_ajax"},
                acceptFileTypes: /^image\/(gif|jpe?g|png)$/i,
                dataType: 'json',
                singleFileUploads: true,
                imageCrop: false, // Force cropped images
                context: jQuery('#fileupload')[0]
            }).always(function () {
                jQuery(this).removeClass('fileupload-processing');
            }).done(function (result) {
                jQuery(this).fileupload('option', 'done')
                    .call(this, jQuery.Event('done'), {
                            result: result
                        }
                    );
            });

        });
    })


    if (jQuery('#fileupload')) {
        // Load existing files:
        jQuery('#fileupload').addClass('fileupload-processing');
        // Load existing files:
        jQuery.ajax({
            // Uncomment the following to send cross-domain cookies:
            xhrFields: {withCredentials: true},
            url: jQuery('#fileupload').fileupload('option', 'url'),
            data: {action: "sss_upload_image_ajax"},
            acceptFileTypes: /^image\/(gif|jpe?g|png)$/i,
            dataType: 'json',
            singleFileUploads: true,
            imageCrop: false, // Force cropped images
            context: jQuery('#fileupload')[0]
        }).always(function () {
            jQuery(this).removeClass('fileupload-processing');
        }).done(function (result) {
            jQuery(this).fileupload('option', 'done')
                .call(this, jQuery.Event('done'), {
                        result: result
                    }
                );
        });
    }

});