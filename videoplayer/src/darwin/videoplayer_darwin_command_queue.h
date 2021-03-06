#if defined(DM_PLATFORM_IOS)
#pragma once

namespace dmVideoPlayer {
    struct Command;
}

namespace CommandQueue {
    void Queue(dmVideoPlayer::Command* cmd);
    void Clear();
    
    int GetCount();
    dmVideoPlayer::Command* GetCommands();
    bool IsEmpty();
}

#endif


