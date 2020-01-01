<div id="fileupload" data-url="<?php print(admin_url('admin-ajax.php')); ?>">
    <label for="">Upload File</label>
    <div class="upload-wrap">

        <div class="upload_box">

            <input type="hidden" name="action" value="sss_upload_image_ajax"/>
            <div class="fileupload-buttonbar">
            <div class="upload-text button ">Drag file here or</div>
                <div class="fileupload-buttons">
                        <span class="fileinput-button">
                            <span class="img-add-edit button button-uploadtext">Select a File</span>
                            <input type="file" name="files">
                        </span>
                </div>
                <!-- The global progress state -->
                <div class="fileupload-progress jqhfu-fade"
                     style="display:none;max-width:500px;margin-top:2px;">
                    <!-- The global progress bar -->
                    <div class="progress" role="progressbar" aria-valuemin="0" aria-valuemax="100"></div>
                    <!-- The extended global progress state -->
                    <div class="progress-extended">&nbsp;</div>
                </div>
            </div>
            <!-- The table listing the files available for upload/download -->

        </div>
        <div role="presentation" class="ipresentation">
            <div class="files"></div>
        </div>
    </div>


    <h3 id="upload-msg" class="success"></h3>
    <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls" data-filter=":even">
        <div class="slides"></div>
        <h3 class="title"></h3>
        <a class="close">×</a>
    </div>

    <script id="template-upload" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}

    <div class="template-upload">
        <p><a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
           <p class="size">Processing...</p>
           <div class="progress"></div>
           <p>
             {% if (!i && !o.options.autoUpload) { %}
             <button class="start icon_photos" disabled>Upload<i class="fa fa-cloud-upload"></i></button>
             {% } %}
         </p>

     </div>
     {% } %}


    </script>
    <script id="template-download" type="text/x-tmpl">
    {% for (var i=0, file; file=o.files[i]; i++) { %}
    <div  class="template-download">
        <div class="album-photo-list">
            {%=file.false%}
            {% if (file.mediumUrl) { %}

            <div class="albums-list-bg-gray">
                <a href="{%=file.url%}" title="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%} >
                   {%=file.name%}
                      </a>
                      <input type="hidden" name="productData[timages]" value="{%=file.url%}" />

                </div>

            <a href="{%=file.url%}" title="{%=file.name%}"  {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.filename%}</a>
             <span class="fileinput-button">
                <a href="#" class="icon_photos_delete" data-url="{%=file
                .deleteUrl%}&action=sss_upload_image_ajax"> <i class="fa fa-trash-o"></i></button>
            </span>
        </div>
        {% } %}

    </div>
</div>
{% } %}


    </script>

</div>