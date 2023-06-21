.class final Lcom/kingroot/kinguser/receiver/SuRequestReceiver$1;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kingroot/kinguser/receiver/SuRequestReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 50
    const/4 v0, 0x2

    const-string v1, "com.kingroot.master.ACTION.BOOT.AUTO.START"

    invoke-static {v0, v1}, Lcom/kingroot/common/framework/service/KSysService;->o(ILjava/lang/String;)V

    .line 53
    return-void
.end method
