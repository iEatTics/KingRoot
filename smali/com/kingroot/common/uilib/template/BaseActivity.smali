.class public abstract Lcom/kingroot/common/uilib/template/BaseActivity;
.super Lcom/kingroot/common/uilib/template/AbsActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kingroot/common/uilib/template/AbsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0}, Lcom/kingroot/common/uilib/template/AbsActivity;->onStop()V

    .line 17
    invoke-static {}, Lcom/kingroot/common/framework/main/MainExitReceiver;->jF()V

    .line 18
    return-void
.end method
