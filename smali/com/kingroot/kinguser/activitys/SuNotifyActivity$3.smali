.class final Lcom/kingroot/kinguser/activitys/SuNotifyActivity$3;
.super Lcom/kingroot/kinguser/bek;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kingroot/kinguser/activitys/SuNotifyActivity;->vz()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/kingroot/kinguser/bek;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Lcom/kingroot/kinguser/bek;->run()V

    .line 89
    const/4 v0, 0x4

    const-string v1, "com.kingroot.master.ACTION.BOOT.AUTO.START"

    invoke-static {v0, v1}, Lcom/kingroot/common/framework/service/KSysService;->o(ILjava/lang/String;)V

    .line 92
    return-void
.end method
