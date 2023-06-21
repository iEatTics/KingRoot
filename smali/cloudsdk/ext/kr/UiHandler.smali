.class public Lcloudsdk/ext/kr/UiHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcloudsdk/ext/kr/RootConst;


# instance fields
.field private X:Lcloudsdk/ext/kr/OnRootListener;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    iput-object p1, p0, Lcloudsdk/ext/kr/UiHandler;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 40
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 43
    :pswitch_1
    iget-object v0, p0, Lcloudsdk/ext/kr/UiHandler;->X:Lcloudsdk/ext/kr/OnRootListener;

    invoke-interface {v0}, Lcloudsdk/ext/kr/OnRootListener;->onCheckRoot()V

    goto :goto_0

    .line 46
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 47
    const-string v1, "mobileRootInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v1

    .line 48
    const-string v2, "pcRootInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v0

    .line 50
    iget-object v2, p0, Lcloudsdk/ext/kr/UiHandler;->X:Lcloudsdk/ext/kr/OnRootListener;

    invoke-interface {v2, v1, v0}, Lcloudsdk/ext/kr/OnRootListener;->onCheckRootFinish(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V

    goto :goto_0

    .line 53
    :pswitch_3
    iget-object v0, p0, Lcloudsdk/ext/kr/UiHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcloudsdk/ext/kr/RootDao;->getInstance(Landroid/content/Context;)Lcloudsdk/ext/kr/RootDao;

    move-result-object v0

    invoke-virtual {v0}, Lcloudsdk/ext/kr/RootDao;->getToSettingNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    const-string v1, "step"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 59
    const-string v2, "solutionCount"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 60
    const-string v3, "solutionIdx"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 61
    const-string v4, "progress"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 65
    iget-object v4, p0, Lcloudsdk/ext/kr/UiHandler;->X:Lcloudsdk/ext/kr/OnRootListener;

    invoke-interface {v4, v1, v2, v3, v0}, Lcloudsdk/ext/kr/OnRootListener;->onRooting(IIII)V

    goto :goto_0

    .line 69
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    const-string v1, "rootState"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcloudsdk/ext/kr/UiHandler;->X:Lcloudsdk/ext/kr/OnRootListener;

    invoke-interface {v1, v0}, Lcloudsdk/ext/kr/OnRootListener;->onRootSuc(I)V

    goto :goto_0

    .line 75
    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    const-string v1, "mobileRootInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v1

    .line 77
    const-string v2, "pcRootInfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcloudsdk/ext/kr/RootExtInfo;->valueOf(Landroid/os/Bundle;)Lcloudsdk/ext/kr/RootExtInfo;

    move-result-object v0

    .line 79
    iget-object v2, p0, Lcloudsdk/ext/kr/UiHandler;->X:Lcloudsdk/ext/kr/OnRootListener;

    invoke-interface {v2, v1, v0}, Lcloudsdk/ext/kr/OnRootListener;->onRootFail(Lcloudsdk/ext/kr/RootExtInfo;Lcloudsdk/ext/kr/RootExtInfo;)V

    goto/16 :goto_0

    .line 83
    :pswitch_6
    iget-object v0, p0, Lcloudsdk/ext/kr/UiHandler;->X:Lcloudsdk/ext/kr/OnRootListener;

    invoke-interface {v0}, Lcloudsdk/ext/kr/OnRootListener;->onSettingNetwork()V

    goto/16 :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x13886
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnRootListener(Lcloudsdk/ext/kr/OnRootListener;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcloudsdk/ext/kr/UiHandler;->X:Lcloudsdk/ext/kr/OnRootListener;

    .line 31
    return-void
.end method
