sub init()
      videocontent = createObject("RoSGNode", "ContentNode")

      videocontent.title = "Example Video"
      videocontent.streamformat = "mp4"
      videocontent.url = "http://roku.cpl.delvenetworks.com/media/59021fabe3b645968e382ac726cd6c7b/f8de8daf2ba34aeb90edc55b2d380c3f/b228eeaba0f248c48e01e158f99cd96e/rr_123_segment_1_072715.mp4"

      video = m.top.findNode("exampleVideo")
      video.content = videocontent

      video.control = "play"
end sub

sub uriChanged()
    print "VideoUriChanged"
    print m.top.videoFormat+":"+m.top.videoUri 
    
    videocontent = createObject("RoSGNode", "ContentNode")

    videocontent.title = "Example Video"
    videocontent.streamformat = m.top.uriFormat
    videocontent.url = m.top.videoUri

    video = m.top.findNode("exampleVideo")
    video.content = videocontent

    video.control = "play"
end sub